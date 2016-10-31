//
//  ConsoleEmulator.h
//  Bridge
//
//  Created by 陈吉 on 2016/10/31.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, ConsoleCommand) {
    kConsoleCommandUp,
    kConsoleCommandDown,
    kConsoleCommandLeft,
    kConsoleCommandRight,
    kConsoleCommandSelect,
    kConsoleCommandStart,
    kConsoleCommandAction1,
    kConsoleCommandAction2,
};

@interface ConsoleEmulator : NSObject
/**
 *  加载指令
 *
 *  @param command 指令
 */
- (void)loadInstructionsForCommand:(ConsoleCommand)command;
/**
 *  执行指令
 */
- (void)excuteInstructions;

@end
