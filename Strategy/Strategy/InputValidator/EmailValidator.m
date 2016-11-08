//
//  EmailValidator.m
//  Strategy
//
//  Created by 陈吉 on 2016/11/8.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "EmailValidator.h"
#import "RegExCategories.h"

@implementation EmailValidator

- (BOOL)validateInput:(UITextField *)input {

    if (input.text.length == 0) {
        
        self.errorMessage = EMPTY_INPUT;
        return NO;
    } else {
    
        BOOL isMatch = [input.text isMatch:RX(@"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}")];
        if (isMatch == NO) {
            self.errorMessage = @"请输入正确的邮箱";
        }
        return isMatch;
    }
}

@end
