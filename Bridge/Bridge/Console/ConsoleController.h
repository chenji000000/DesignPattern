//
//  ConsoleController.h
//  Bridge
//
//  Created by 陈吉 on 2016/10/31.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ConsoleEmulator.h"

@interface ConsoleController : NSObject
/**
 *  抽象模拟器
 */
@property (nonatomic, strong) ConsoleEmulator *emulator;
/**
 *  执行指令
 *
 *  @param command 指令
 */
- (void)excuteCommand:(ConsoleCommand)command;

@end
