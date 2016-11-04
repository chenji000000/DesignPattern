//
//  Receiver.m
//  Command
//
//  Created by 陈吉 on 2016/11/4.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "Receiver.h"

@implementation Receiver

- (void)setColorView:(UIView *)colorView {

    //持有colorView;
    _colorView = colorView;
    
    //存储持有的colorView的颜色值
    UIColor *color = self.colorView.backgroundColor;
    [color getHue:&_hue saturation:&_saturation brightness:&_brightness alpha:&_alpha];
}

- (void)makeViewLighter:(CGFloat)quantity {

    _brightness += quantity;
    _brightness = MIN(1, _brightness);
    
    self.colorView.backgroundColor = [UIColor colorWithHue:_hue saturation:_saturation brightness:_brightness alpha:_alpha];
}

- (void)makeViewDarker:(CGFloat)quantity {

    _brightness -= quantity;
    _brightness = MAX(0, _brightness);
    
    self.colorView.backgroundColor = [UIColor colorWithHue:_hue saturation:_saturation brightness:_brightness alpha:_alpha];
}

@end
