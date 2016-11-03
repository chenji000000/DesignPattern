//
//  Context.m
//  Interpreter
//
//  Created by 陈吉 on 2016/11/3.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "Context.h"

@implementation Context

- (instancetype)initWithInput:(NSString *)input {

    self = [super init];
    if (self) {
        _input = input;
    }
    return self;
}

- (NSString *)output {

    return [NSString stringWithFormat:@"输入的是%@", _input];
}

@end
