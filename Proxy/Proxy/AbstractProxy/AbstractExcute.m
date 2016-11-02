//
//  AbstractExcute.m
//  Proxy
//
//  Created by 陈吉 on 2016/11/2.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "AbstractExcute.h"

@implementation AbstractExcute

+ (instancetype)shareInstance {

    static AbstractExcute *sharedAbstractExcute = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedAbstractExcute = [[self alloc] init];
    });
    return sharedAbstractExcute;
}

- (void)nullExcute:(NSArray *)className {

    if (className.count == 3) {
        NSLog(@"%@ 设置了代理，但该代理没有实现 %@ 方法", className[0], className[1]);
    } else {
    
        NSLog(@"%@ 没有设置代理，方法 %@ 没有执行", className[0], className[1]);
    }
}

@end
