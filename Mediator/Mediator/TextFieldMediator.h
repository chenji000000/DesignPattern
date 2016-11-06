//
//  TextFieldMediator.h
//  Mediator
//
//  Created by 陈吉 on 2016/11/6.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface TextFieldMediator : NSObject <UITextFieldDelegate>

@property (nonatomic, weak) UITextField *textField_1;
@property (nonatomic, weak) UITextField *textField_2;
@property (nonatomic, weak) UITextField *textField_3;

@end
