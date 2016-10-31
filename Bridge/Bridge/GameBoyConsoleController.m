//
//  GameBoyConsoleController.m
//  Bridge
//
//  Created by 陈吉 on 2016/10/31.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "GameBoyConsoleController.h"

@implementation GameBoyConsoleController

- (void)up {
    [super excuteCommand:kConsoleCommandUp];
}

- (void)down {
    [super excuteCommand:kConsoleCommandDown];
}

- (void)left {
    [super excuteCommand:kConsoleCommandLeft];
}

- (void)right {
    [super excuteCommand:kConsoleCommandRight];
}

- (void)select {
    [super excuteCommand:kConsoleCommandSelect];
}

- (void)start {
    [super excuteCommand:kConsoleCommandStart];
}

- (void)action1 {
    [super excuteCommand:kConsoleCommandAction1];
}

- (void)action2 {
    [super excuteCommand:kConsoleCommandAction2];
}

@end
