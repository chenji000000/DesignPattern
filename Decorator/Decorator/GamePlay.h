//
//  GamePlay.h
//  Decorator
//
//  Created by 陈吉 on 2016/10/31.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GamePlay : NSObject
/**
 *  游戏币的数量
 */
@property (nonatomic) NSInteger coin;

/**
 *  上下左右的操作
 */
- (void)up;
- (void)down;
- (void)left;
- (void)right;

/**
 *  选择与开始的操作
 */
- (void)select;
- (void)start;

/**
 *  按钮A + B的操作
 */
- (void)commandA;
- (void)commandB;

@end
