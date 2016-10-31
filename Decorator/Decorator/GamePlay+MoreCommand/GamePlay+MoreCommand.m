//
//  GamePlay+MoreCommand.m
//  Decorator
//
//  Created by 陈吉 on 2016/10/31.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "GamePlay+MoreCommand.h"

@implementation GamePlay (MoreCommand)

- (void)cheat {
    [self up];
    [self down];
    [self up];
    [self down];
    [self left];
    [self right];
    [self left];
    [self right];
    [self commandA];
    [self commandB];
    [self commandA];
    [self commandB];
}

NSString *const _recognizerLives = @"_recognizerLives";
- (void)setLives:(NSInteger)lives {
    objc_setAssociatedObject(self, (__bridge const void *)(_recognizerLives), @(lives), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSInteger)lives {
    NSNumber *lives = objc_getAssociatedObject(self, (__bridge const void *)(_recognizerLives));
    //相关处理逻辑
    return [lives integerValue];
}

@end
