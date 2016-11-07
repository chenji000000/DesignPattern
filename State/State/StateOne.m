//
//  StateOne.m
//  State
//
//  Created by 陈吉 on 2016/11/7.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "StateOne.h"
#import "NormalModel.h"

@implementation StateOne

- (void)handleData:(id)data {

    NormalModel *model = data;
    model.workType = iOS_developer;
    model.age = @(25);
    model.name = @"ChenJi";
    NSLog(@"%@ 今年 %@ 岁", model.name, model.age);
}

@end
