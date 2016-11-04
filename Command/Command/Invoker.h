//
//  Invoker.h
//  Command
//
//  Created by 陈吉 on 2016/11/4.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommandProtocol.h"

@interface Invoker : NSObject

/*
 单例
 
 @return 单例
 */
+ (instancetype)sharedInstance;

/*
 添加并执行
 
 @param command 命令
 */
- (void)addAndExecute:(id <CommandProtocol>)command;

@end
