//
//  UIButton+inits.h
//  Strategy
//
//  Created by 陈吉 on 2016/11/8.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, EButtonType) {

    BUTTON_NORMAL,
    BUTTON_RED
};

@interface UIButton (inits)

/*
 创建button
 
 @param frame frame值
 @param type 类型
 @param title 标题
 @param tag 标签
 @param target 目标
 @param selector 执行句柄
 
 @return 创建好的button
 */
+ (UIButton *)createButtonWithFrame:(CGRect)frame
                         buttonType:(EButtonType)type
                              title:(NSString *)title
                                tag:(NSInteger)tag
                             target:(id)target
                             action:(SEL)selector;

@end
