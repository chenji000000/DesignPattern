//
//  Monopoly.m
//  Template
//
//  Created by 陈吉 on 2016/11/3.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "Monopoly.h"

@interface Monopoly ()

@property (nonatomic, assign) int gamePlayerCount;

@end

@implementation Monopoly

- (void)setPlayerCount:(int)count {
    
    self.gamePlayerCount = count;
}

- (int)playerCount {

    return self.gamePlayerCount;
}

- (void)initializeGame {

    NSLog(@"Monopoly initialize");
}

- (void)makePlay {

    NSLog(@"Monopoly makePlay");
}

- (void)endOfGame {

    NSLog(@"Monopoly endOfGame");
}

@end
