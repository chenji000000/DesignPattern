//
//  Node.m
//  Iterator
//
//  Created by 陈吉 on 2016/11/5.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "Node.h"

@implementation Node

- (instancetype)initWithItem:(id)item {

    self = [super init];
    if (self) {
        self.item = item;
    }
    return self;
}

@end
