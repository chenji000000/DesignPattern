//
//  CustomField.h
//  Strategy
//
//  Created by 陈吉 on 2016/11/8.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "InputValidator.h"

@interface CustomField : UITextField

/*
 抽象策略
 */
@property (nonatomic, strong, readonly) InputValidator *inputValidator;

/*
 初始化textField
 @param frame
 @param inputValidator 验证策略
 @return 实例对象
 */
- (instancetype)initWithFrame:(CGRect)frame withInputValidator:(InputValidator *)inputValidator;

/*
 对应于具体策略的返回值
 @return 是否合格
 */
- (BOOL)validate;

@end
