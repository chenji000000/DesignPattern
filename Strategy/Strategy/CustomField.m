//
//  CustomField.m
//  Strategy
//
//  Created by 陈吉 on 2016/11/8.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "CustomField.h"

@interface CustomField ()

/*
 抽象策略
 */
@property (nonatomic, strong) InputValidator *inputValidator;

@end

@implementation CustomField

#pragma mark - 初始化
- (instancetype)initWithFrame:(CGRect)frame withInputValidator:(InputValidator *)inputValidator {

    if (self = [super initWithFrame:frame]) {
        [self setup];
        _inputValidator = inputValidator;
    }
    return self;
}

- (void)setup {

    UIView *leftView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 5, self.frame.size.height)];
    self.leftView = leftView;
    self.leftViewMode = UITextFieldViewModeAlways;
    self.font = [UIFont fontWithName:@"Avenir-Book" size:12.f];
    self.layer.borderWidth = 0.5f;
}

- (BOOL)validate {

    return [self.inputValidator validateInput:self];
}

@end
