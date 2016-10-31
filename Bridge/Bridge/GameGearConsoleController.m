//
//  GameGearConsoleController.m
//  Bridge
//
//  Created by 陈吉 on 2016/10/31.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "GameGearConsoleController.h"

@implementation GameGearConsoleController

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


@end
