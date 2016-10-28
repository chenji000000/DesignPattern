//
//  VehicleBuilder.h
//  Builder
//
//  Created by 陈吉 on 2016/10/27.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VehicleBuilderProtocol.h"

@interface VehicleBuilder : NSObject <VehicleBuilderProtocol>

/**
 *  车辆信息
 */
@property (nonatomic, strong) NSMutableDictionary *vehicleInfo;

@end
