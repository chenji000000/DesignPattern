//
//  Context.h
//  Interpreter
//
//  Created by 陈吉 on 2016/11/3.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Context : NSObject

@property (nonatomic, copy) NSString *input;
@property (nonatomic, copy) NSString *output;

- (instancetype)initWithInput:(NSString *)input;

@end
