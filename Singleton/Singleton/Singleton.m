//
//  Singleton.m
//  Singleton
//
//  Created by 陈吉 on 2016/10/28.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "Singleton.h"

static Singleton *_sharedSingleton = nil;

@implementation Singleton

- (instancetype)init {
    [NSException raise:@"SingletonPattern" format:@"Cannot instantiate singleton using init method, sharedInstance must be used."];
    return nil;
}

- (id)copyWithZone:(NSZone *)zone {
    
    [NSException raise:@"SingletonPattern"
                format:@"Cannot copy singleton using copy method, sharedInstance must be used."];
    
    return nil;
}

+ (Singleton *)sharedInstance {
    if (self != [Singleton class]) {
        [NSException raise:@"SingletonPattern"
                    format:@"Cannot use sharedInstance method from subclass."];
    }
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedSingleton = [[Singleton alloc] initInstance];
    });
    return _sharedSingleton;
}

#pragma mark - private method

- (id)initInstance {
    
    return [super init];
}

@end
