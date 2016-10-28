//
//  VehicleBuilderProtocol.h
//  Builder
//
//  Created by 陈吉 on 2016/10/27.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol VehicleBuilderProtocol <NSObject>

@required
/**
 *  制造汽车底盘
 */
- (void)buildVehicleChassis;

/**
 *  制造汽车引擎
 */
- (void)buildVehicleEngine;

/**
 *  制造汽车轮子
 */
- (void)buildVehicleWheels;

/**
 *  制造汽车车门
 */
- (void)buildVehicleDoors;

@end
