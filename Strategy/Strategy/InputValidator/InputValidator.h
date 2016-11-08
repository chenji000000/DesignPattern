//
//  InputValidator.h
//  Strategy
//
//  Created by 陈吉 on 2016/11/8.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#define EMPTY_INPUT @"输入为空"

@interface InputValidator : NSObject

/*
 错误信息
 */
@property (nonatomic, strong) NSString *errorMessage;

/*
 抽象策略
 @param input 当前输入textField
 @return 输入验证是否合法
 */
- (BOOL)validateInput:(UITextField *)input;


@end
