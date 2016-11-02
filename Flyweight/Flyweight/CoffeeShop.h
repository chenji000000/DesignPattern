//
//  CoffeeShop.h
//  Flyweight
//
//  Created by 陈吉 on 2016/11/2.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CoffeeShop : NSObject
/*
 接收订单
 
 @param flavor 咖啡味道
 
 @param table 桌子
 */
- (void)takeOrder:(NSString *)flavor table:(int)table;

//开始服务
- (void)serve;

@end
