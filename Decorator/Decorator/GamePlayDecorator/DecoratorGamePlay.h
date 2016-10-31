//
//  DecoratorGamePlay.h
//  Decorator
//
//  Created by 陈吉 on 2016/10/31.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GamePlay.h"

@interface DecoratorGamePlay : NSObject

@property (nonatomic) NSInteger coin;

- (void)up;
- (void)down;
- (void)left;
- (void)right;
- (void)select;
- (void)start;
- (void)commandA;
- (void)commandB;

#pragma mark - 以下为装饰对象新添加的功能

@property (nonatomic, readonly) NSInteger lives;

- (void)cheat;

@end
