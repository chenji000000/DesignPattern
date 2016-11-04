//
//  Receiver.h
//  Command
//
//  Created by 陈吉 on 2016/11/4.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Receiver : NSObject {

    CGFloat _hue;
    CGFloat _saturation;
    CGFloat _brightness;
    CGFloat _alpha;
}

@property (nonatomic, weak) UIView *colorView;

/*
 让接受指令的view颜色变淡
 
 @param quantity 数量
*/
- (void)makeViewLighter:(CGFloat)quantity;

/*
 让接受指令的view颜色变深
 
 @param quantity 数量
 */
- (void)makeViewDarker:(CGFloat)quantity;

@end
