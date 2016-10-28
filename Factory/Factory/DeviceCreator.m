//
//  DeviceCreator.m
//  Factory
//
//  Created by 陈吉 on 2016/10/27.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "DeviceCreator.h"
#import "BaseDevice.h"

@implementation DeviceCreator

+ (BaseDevice *)deviceCreatorWithDeviceType:(DeviceType)deviceType {
    
    if (deviceType == kiPhone) {
        
        return [iPhoneDevice new];
        
    } else if (deviceType == kAndroid) {
        
        return [AndroidDevice new];
        
    } else if (deviceType == kWindows) {
        
        return [WindowsDevice new];
        
    } else {
        
        return [BaseDevice new];
    }
}


@end
