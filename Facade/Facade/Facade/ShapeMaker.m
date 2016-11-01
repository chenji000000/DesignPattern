//
//  ShapeMaker.m
//  Facade
//
//  Created by 陈吉 on 2016/11/1.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "ShapeMaker.h"

@implementation ShapeMaker

+ (void)drawCircleAndRectangle {
    Shape *circle = [Circle new];
    Shape *rectangle = [Rectangle new];
    
    [circle draw];
    [rectangle draw];
    NSLog(@"--------------");
}

+ (void)drawCircleAndSquare {
    Shape *circle = [Circle new];
    Shape *square = [Square new];
    
    [circle draw];
    [square draw];
    NSLog(@"--------------");
}

+ (void)drawAll {
    Shape *circle = [Circle new];
    Shape *rectangle = [Rectangle new];
    Shape *square = [Square new];
    
    [circle draw];
    [rectangle draw];
    [square draw];
    NSLog(@"--------------");
}

@end
