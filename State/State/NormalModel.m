//
//  NormalModel.m
//  State
//
//  Created by 陈吉 on 2016/11/7.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "NormalModel.h"

@implementation NormalModel

- (void)requestState:(StateType *)type {

    [type handleData:self];
}

@end
