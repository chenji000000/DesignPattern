//
//  BrandingFactory.m
//  AbstractFactory
//
//  Created by 陈吉 on 2016/10/27.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "BrandingFactory.h"
#import "AcmeBrandingFactory.h"
#import "SierraBrandingFactory.h"

@implementation BrandingFactory

+ (BrandingFactory *)factory {
    if ([[self class] isSubclassOfClass:[AcmeBrandingFactory class]]) {
        return [AcmeBrandingFactory new];
    } else if ([[self class] isSubclassOfClass:[SierraBrandingFactory class]]) {
        return [SierraBrandingFactory new];
    } else {
        return nil;
    }
}

- (UIView *)brandedView {
    
    return nil;
}

- (UIButton *)brandedMainButton {
    
    return nil;
}

@end
