//
//  AbstractProxy.m
//  Proxy
//
//  Created by 陈吉 on 2016/11/2.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "AbstractProxy.h"
#import "AbstractExcute.h"
#import <objc/runtime.h>

@implementation AbstractProxy

- (instancetype)initWithCustomer:(id)customer {
    self.customer = customer;
    return self;
}

#pragma mark - NSProxy

- (NSMethodSignature *)methodSignatureForSelector:(SEL)sel {

    if ([self.customer respondsToSelector:sel]) {
        return [self.customer methodSignatureForSelector:sel];
    } else {
    
        AbstractExcute *excute = [AbstractExcute shareInstance];
        return [excute methodSignatureForSelector:NSSelectorFromString(@"nullExcute:")];
    }
}

- (void)forwardInvocation:(NSInvocation *)invocation {

    SEL selector = [invocation selector];
    if ([self.customer respondsToSelector:selector]) {
        
        [invocation setTarget:self.customer];
        [invocation invoke];
    } else {
    
        NSString *selectorString = NSStringFromSelector(invocation.selector);
        invocation.selector = NSSelectorFromString(@"nullExcute:");
        AbstractExcute *excute = [AbstractExcute shareInstance];
        [invocation setTarget:excute];
        
        const char *className = class_getName([self class]);
        NSArray *classNameArray = nil;
        if (self.customer) {
            classNameArray = @[[NSString stringWithUTF8String:className], selectorString, @""];
        } else {
        
            classNameArray = @[[NSString stringWithUTF8String:className], selectorString];
        }
        [invocation setArgument:&classNameArray atIndex:2];
        [invocation invoke];
    }
}

@end
