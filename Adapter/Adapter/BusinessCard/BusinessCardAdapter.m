//
//  BusinessCardAdapter.m
//  Adapter
//
//  Created by 陈吉 on 2016/10/28.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "BusinessCardAdapter.h"

@implementation BusinessCardAdapter

- (instancetype)initWithData:(id)data {
    if (self = [super init]) {
        self.data = data;
    }
    return self;
}

- (NSString *)name {
    return nil;
}

- (UIColor *)lineColor {
    return nil;
}

- (NSString *)phoneNumber {
    return nil;
}

@end
