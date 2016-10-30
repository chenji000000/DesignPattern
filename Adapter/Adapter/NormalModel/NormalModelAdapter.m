//
//  NormalModelAdapter.m
//  Adapter
//
//  Created by 陈吉 on 2016/10/28.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "NormalModelAdapter.h"
#import "NormalModel.h"

@implementation NormalModelAdapter

- (NSString *)name {
    NormalModel *model = self.data;
    return model.name;
}

- (UIColor *)lineColor {
    NormalModel *model = self.data;
    return model.lineColor;
}

- (NSString *)phoneNumber {
    NormalModel *model = self.data;
    return model.phoneNumber;
}

@end
