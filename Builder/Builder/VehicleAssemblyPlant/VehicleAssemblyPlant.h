//
//  VehicleAssemblyPlant.h
//  Builder
//
//  Created by 陈吉 on 2016/10/27.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VehicleBuilder.h"

/**
 *  车辆装配工厂
 */
@interface VehicleAssemblyPlant : NSObject

/**
 *  组装车辆
 *
 *  @param vehicleBuilder 组装方案
 *
 *  @return 组装好的车辆
 */
+ (VehicleBuilder *)vehicleAssembly:(VehicleBuilder *)vehicleBuilder;

@end
