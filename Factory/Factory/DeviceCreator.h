//
//  DeviceCreator.h
//  Factory
//
//  Created by 陈吉 on 2016/10/27.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DeviceProtocol.h"
#import "iPhoneDevice.h"
#import "AndroidDevice.h"
#import "WindowsDevice.h"

typedef enum : NSUInteger {
    
    kAndroid,
    kiPhone,
    kWindows,
    
} DeviceType;

@interface DeviceCreator : NSObject

/**
 *  根据标签创建手机
 *
 *  @param deviceType 手机标签
 *
 *  @return 对应的手机
 */
+ (BaseDevice *)deviceCreatorWithDeviceType:(DeviceType)deviceType;

@end
