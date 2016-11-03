//
//  Chess.m
//  Template
//
//  Created by 陈吉 on 2016/11/3.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "Chess.h"

@interface Chess ()

@property (nonatomic, assign) int gamePlayerCount;

@end

@implementation Chess

- (void)setPlayerCount:(int)count {

    self.gamePlayerCount = count;
}

- (int)playerCount {

    return self.gamePlayerCount;
}

- (void)initializeGame {

    NSLog(@"Chess initialize");
}

- (void)makePlay {

    NSLog(@"Chess makePlay");
}

- (void)endOfGame {

    NSLog(@"Chess endOfGame");
}

@end
