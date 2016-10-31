//
//  GamePlay+MoreCommand.h
//  Decorator
//
//  Created by 陈吉 on 2016/10/31.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "GamePlay.h"
#import <objc/runtime.h>

@interface GamePlay (MoreCommand)

/**
 *  剩余几条命
 */
@property (nonatomic, readonly) NSInteger lives;

/**
 *  作弊（上下上下左右左右ABAB）
 */
- (void)cheat;

@end
