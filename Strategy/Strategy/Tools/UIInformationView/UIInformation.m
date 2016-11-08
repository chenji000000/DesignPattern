//
//  UIInformation.m
//  Strategy
//
//  Created by 陈吉 on 2016/11/8.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "UIInformation.h"

/*
 让类方法中的对象被持有
 */
static ClickAtIndexBlock _clickAtIndexBlock;

@interface UIInformation () <UIActionSheetDelegate, UIAlertViewDelegate>

@end

@implementation UIInformation

+ (UIAlertView *)showAlertViewWithTitle:(NSString *)title massage:(NSString *)message cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitles:(NSArray *)otherButtons clickAtIndex:(ClickAtIndexBlock)clickAtIndex {

    _clickAtIndexBlock = [clickAtIndex copy];
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title message:message delegate:self cancelButtonTitle:cancelButtonTitle otherButtonTitles:nil];
    
    for (NSString *buttonTitle in otherButtons) {
        [alert addButtonWithTitle:buttonTitle];
    }
    [alert show];
    return alert;
}

+ (UIActionSheet *)showActionSheetInView:(UIView *)view WithTitle:(NSString *)title cancelButtonTitle:(NSString *)cancelButtonTitle destructiveButtonTitle:(NSString *)destructiveButtonTitle otherButtonTitles:(NSArray *)otherButtons clickAtIndex:(ClickAtIndexBlock)clickAtIndex {

    _clickAtIndexBlock = [clickAtIndex copy];
    
    UIActionSheet *sheet = [[UIActionSheet alloc] initWithTitle:title delegate:[self self] cancelButtonTitle:cancelButtonTitle destructiveButtonTitle:destructiveButtonTitle otherButtonTitles:nil];
    
    for (NSString *buttonTitle in otherButtons) {
        [sheet addButtonWithTitle:buttonTitle];
    }
    [sheet showInView:view];
    return sheet;
}

#pragma mark - alertView代理
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {

    _clickAtIndexBlock(buttonIndex);
}

- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex {

    _clickAtIndexBlock = nil;
}

#pragma mark - actionSheetView代理
- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {

    _clickAtIndexBlock(buttonIndex);
}

- (void)actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex {

    _clickAtIndexBlock = nil;
}

@end
