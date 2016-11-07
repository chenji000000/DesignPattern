//
//  StateTwo.m
//  State
//
//  Created by 陈吉 on 2016/11/7.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "StateTwo.h"
#import "NormalModel.h"

@implementation StateTwo

- (void)handleData:(id)data {

    NormalModel *model = data;
    model.workType = Android_developer;
    model.age = @(27);
    model.name = @"ChenJi";
    NSLog(@"%@ 今年 %@ 岁", model.name, model.age);
}

@end
