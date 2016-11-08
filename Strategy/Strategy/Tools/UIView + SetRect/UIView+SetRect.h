//
//  UIView+SetRect.h
//  Strategy
//
//  Created by 陈吉 on 2016/11/8.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import <UIKit/UIKit.h>

#define Width [UIScreen mainScreen].bounds.size.width
#define Height [UIScreen mainScreen].bounds.size.height

@interface UIView (SetRect)

//Frame
@property (nonatomic) CGPoint viewOrigin;
@property (nonatomic) CGSize viewSize;

//Frame Origin
@property (nonatomic) CGFloat x;
@property (nonatomic) CGFloat y;

//Frame SIze
@property (nonatomic) CGFloat width;
@property (nonatomic) CGFloat height;

//Frame Borders
@property (nonatomic) CGFloat top;
@property (nonatomic) CGFloat left;
@property (nonatomic) CGFloat bottom;
@property (nonatomic) CGFloat right;

//Center Point
#if !IS_IOS_DEVICE
@property (nonatomic) CGPoint center;
#endif
@property (nonatomic) CGFloat centerX;
@property (nonatomic) CGFloat centerY;

//Middle Point
@property (nonatomic, readonly) CGPoint middlePoint;
@property (nonatomic, readonly) CGFloat middleX;
@property (nonatomic, readonly) CGFloat middleY;

@end
