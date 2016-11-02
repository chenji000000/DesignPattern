//
//  Menu.h
//  Flyweight
//
//  Created by 陈吉 on 2016/11/2.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CoffeeFlavor.h"

@interface Menu : NSObject

/*
 获取制定味道的咖啡（如果没有泽创建）
 
 @param flavor 味道
 
 @return 制定味道的咖啡
 */
- (CoffeeFlavor *)lookupWithFlavor:(NSString *)flavor;

@end
