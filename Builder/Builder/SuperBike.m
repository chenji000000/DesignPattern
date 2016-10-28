//
//  SuperBike.m
//  Builder
//
//  Created by 陈吉 on 2016/10/27.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "SuperBike.h"

@implementation SuperBike

- (void)buildVehicleChassis {
    
    [self.vehicleInfo setObject:@"SuperBike" forKey:@"Chassis"];
}

- (void)buildVehicleEngine {
    
    [self.vehicleInfo setObject:@"SuperBike" forKey:@"Engine"];
}

- (void)buildVehicleWheels {
    
    [self.vehicleInfo setObject:@"SuperBike" forKey:@"Wheels"];
}

- (void)buildVehicleDoors {
    
    [self.vehicleInfo setObject:@"SuperBike" forKey:@"Doors"];
}

@end
