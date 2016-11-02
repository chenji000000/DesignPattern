//
//  AbstractProxy.h
//  Proxy
//
//  Created by 陈吉 on 2016/11/2.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AbstractProxy : NSProxy

//被代理对象
@property (nonatomic, weak) id customer;
/*
 代理客户
 
 @param customer 实现了某种协议的客户
 
 @return 代理对象
 */
- (instancetype)initWithCustomer:(id)customer;

@end
