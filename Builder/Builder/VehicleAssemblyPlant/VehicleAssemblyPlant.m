//
//  VehicleAssemblyPlant.m
//  Builder
//
//  Created by 陈吉 on 2016/10/27.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "VehicleAssemblyPlant.h"

@implementation VehicleAssemblyPlant

+ (VehicleBuilder *)vehicleAssembly:(VehicleBuilder *)vehicleBuilder {
    [vehicleBuilder buildVehicleChassis];
    [vehicleBuilder buildVehicleEngine];
    [vehicleBuilder buildVehicleWheels];
    [vehicleBuilder buildVehicleDoors];
    
    return vehicleBuilder;
}

@end
