//
//  UIView+SetRect.m
//  Composite
//
//  Created by 陈吉 on 2016/10/31.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "UIView+SetRect.h"

@implementation UIView (SetRect)

#pragma mark Frame

- (CGPoint)viewOrigin {
    return self.frame.origin;
}

- (void)setViewOrigin:(CGPoint)viewOrigin {
    CGRect newFrame = self.frame;
    newFrame.origin = viewOrigin;
    self.frame = newFrame;
}

- (CGSize)viewSize {
    return self.frame.size;
}

- (void)setViewSize:(CGSize)viewSize {
    CGRect newFrame = self.frame;
    newFrame.size = viewSize;
    self.frame = newFrame;
}

#pragma mark Frame Origin

- (CGFloat)x {
    return self.frame.origin.x;
}

- (void)setX:(CGFloat)x {
    CGRect newframe = self.frame;
    newframe.origin.x = x;
    self.frame = newframe;
}

- (CGFloat)y {
    return self.frame.origin.y;
}

- (void)setY:(CGFloat)y {
    CGRect newframe = self.frame;
    newframe.origin.y = y;
    self.frame = newframe;
}

#pragma mark Frame Size

- (CGFloat)height {
    return self.frame.size.height;
}

- (void)setHeight:(CGFloat)height {
    CGRect newFrame = self.frame;
    newFrame.size.height = height;
    self.frame = newFrame;
}

- (CGFloat)width {
    return self.frame.size.width;
}

- (void)setWidth:(CGFloat)width {
    CGRect newFrame = self.frame;
    newFrame.size.width = width;
    self.frame = newFrame;
}

#pragma mark Frame Borders

- (CGFloat)left {
    return self.x;
}

- (void)setLeft:(CGFloat)left {
    self.x = left;
}

- (CGFloat)right {
    return self.frame.origin.x + self.frame.size.width;
}

- (void)setRight:(CGFloat)right {
    self.x = right - self.width;
}

- (CGFloat)top {
    return self.y;
}

- (void)setTop:(CGFloat)top {
    self.y = top;
}

- (CGFloat)bottom {
    return self.frame.origin.y + self.frame.size.height;
}

- (void)setBottom:(CGFloat)bottom {
    self.y = bottom - self.height;
}

#pragma mark Center Point

#if !IS_IOS_DEVICE
- (CGPoint)center {
    return CGPointMake(self.left + self.middleX, self.top + self.middleY);
}

- (void)setCenter:(CGPoint)center {
    self.left = center.x - self.middleX;
    self.top = center.y - self.middleY;
}
#endif
- (CGFloat)centerX {
    return self.center.x;
}

- (void)setCenterX:(CGFloat)centerX {
    self.center = CGPointMake(centerX, self.center.y);
}

- (CGFloat)centerY {
    return self.center.y;
}

- (void)setCenterY:(CGFloat)centerY {
    self.center = CGPointMake(self.center.x, centerY);
}

#pragma mark Middle Point

- (CGPoint)middlePoint {
    return CGPointMake(self.middleX, self.middleY);
}

- (CGFloat)middleX {
    return self.width / 2;
}

- (CGFloat)middleY {
    return self.height / 2;
}

@end
