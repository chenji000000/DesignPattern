//
//  CommonUsedAdapter.m
//  Adapter
//
//  Created by 陈吉 on 2016/10/28.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "CommonUsedAdapter.h"
#import "SpecialModel.h"
#import "NormalModel.h"

@implementation CommonUsedAdapter

- (NSString *)name {
    NSString *name = nil;
    if ([self.data isMemberOfClass:[SpecialModel class]]) {
        SpecialModel *model = self.data;
        name = model.name;
    } else if ([self.data isMemberOfClass:[NormalModel class]]) {
        NormalModel *model = self.data;
        name = model.name;
    } else {
        name = nil;
    }
    return name;
}

- (UIColor *)lineColor {
    UIColor *lineColor = nil;
    if ([self.data isMemberOfClass:[SpecialModel class]]) {
        SpecialModel *model = self.data;
        if ([model.colorString isEqualToString:@"red"]) {
            lineColor = [UIColor redColor];
        } else if ([model.colorString isEqualToString:@"green"]) {
            lineColor = [UIColor greenColor];
        } else {
            lineColor = [UIColor blackColor];
        }
    } else if ([self.data isMemberOfClass:[NormalModel class]]) {
        NormalModel *model = self.data;
        lineColor = model.lineColor;
    }
    return lineColor;
}

- (NSString *)phoneNumber {
    NSString *phoneNumber = nil;
    if ([self.data isMemberOfClass:[SpecialModel class]]) {
        SpecialModel *model = self.data;
        phoneNumber = model.phoneNumber;
    } else if ([self.data isMemberOfClass:[NormalModel class]]) {
        NormalModel *model = self.data;
        phoneNumber = model.phoneNumber;
    } else {
        phoneNumber = nil;
    }
    return phoneNumber;
}

@end
