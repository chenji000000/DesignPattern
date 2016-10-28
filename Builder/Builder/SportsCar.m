//
//  SportsCar.m
//  Builder
//
//  Created by 陈吉 on 2016/10/27.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "SportsCar.h"

@implementation SportsCar

- (void)buildVehicleChassis {
    
    [self.vehicleInfo setObject:@"SportsCar" forKey:@"Chassis"];
}

- (void)buildVehicleEngine {
    
    [self.vehicleInfo setObject:@"SportsCar" forKey:@"Engine"];
}

- (void)buildVehicleWheels {
    
    [self.vehicleInfo setObject:@"SportsCar" forKey:@"Wheels"];
}

- (void)buildVehicleDoors {
    
    [self.vehicleInfo setObject:@"SportsCar" forKey:@"Doors"];
}

@end
