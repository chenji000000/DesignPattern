//
//  Invoker.m
//  Command
//
//  Created by 陈吉 on 2016/11/4.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "Invoker.h"

@interface Invoker ()

@property (nonatomic, strong) NSMutableArray *commandQueue;

@end

@implementation Invoker

+ (instancetype)sharedInstance {

    static Invoker *sharedInstanceValue = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstanceValue = [[Invoker alloc] init];
        sharedInstanceValue.commandQueue = [NSMutableArray array];
    });
    
    return sharedInstanceValue;
    
}

- (void)addAndExecute:(id<CommandProtocol>)command {

    //添加并执行
    [self.commandQueue addObject:command];
    [command execute];
}

@end
