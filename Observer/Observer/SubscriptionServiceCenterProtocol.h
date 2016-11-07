//
//  SubscriptionServiceCenterProtocol.h
//  Observer
//
//  Created by 陈吉 on 2016/11/7.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SubscriptionServiceCenterProtocol <NSObject>

/*
 接收到的订阅信息
 @param message 订阅信息
 @param subscriptionNumber 订阅编号
 */
- (void)subscriptionMessage:(id)message subscriptionNumber:(NSString *)subscriptionNumber;

@end
