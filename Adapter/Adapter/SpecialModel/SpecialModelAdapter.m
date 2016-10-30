//
//  SpecialModelAdapter.m
//  Adapter
//
//  Created by 陈吉 on 2016/10/28.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "SpecialModelAdapter.h"
#import "SpecialModel.h"

@implementation SpecialModelAdapter

- (NSString *)name {
    SpecialModel *model = self.data;
    return model.name;
}

- (UIColor *)lineColor {
    SpecialModel *model = self.data;
    UIColor *color = nil;
    if ([model.colorString isEqualToString:@"red"]) {
        color = [UIColor redColor];
    } else if ([model.colorString isEqualToString:@"green"]) {
        color = [UIColor greenColor];
    } else {
        color = [UIColor blackColor];
    }
    return color;
}

- (NSString *)phoneNumber {
    SpecialModel *model = self.data;
    return model.phoneNumber;
}

@end
