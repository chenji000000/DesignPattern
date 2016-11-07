//
//  SystemNotificationCenterProtocol.h
//  Observer
//
//  Created by 陈吉 on 2016/11/7.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SystemNotificationCenterProtocol <NSObject>

@required

/*
 监听通知信息
 
 @param name 订阅的号码
 @param object 通知传递的对象
 */
- (void)listenWithNotificationName:(NSString *)name eventObject:(id)object;

@end
