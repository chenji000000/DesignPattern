//
//  ConsoleController.m
//  Bridge
//
//  Created by 陈吉 on 2016/10/31.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "ConsoleController.h"

@implementation ConsoleController

- (void)excuteCommand:(ConsoleCommand)command {
    [_emulator loadInstructionsForCommand:command];
    [_emulator excuteInstructions];
}

@end
