//
//  ShapeMaker.h
//  Facade
//
//  Created by 陈吉 on 2016/11/1.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Shape.h"

#import "Circle.h"
#import "Rectangle.h"
#import "Square.h"


@interface ShapeMaker : NSObject

+ (void)drawCircleAndRectangle;
+ (void)drawCircleAndSquare;
+ (void)drawAll;

@end
