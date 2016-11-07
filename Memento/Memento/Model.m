//
//  Model.m
//  Memento
//
//  Created by 陈吉 on 2016/11/6.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "Model.h"

@implementation Model

- (id)currentState {

    return @{@"name" : self.name == nil ? @"" : self.name,
             @"age" : self.age == nil ? @(0) : self.age};
}

- (void)recoverFromState:(id)state {

    NSDictionary *obj = state;
    
    self.name = obj[@"name"];
    self.age = obj[@"age"];
}

@end
