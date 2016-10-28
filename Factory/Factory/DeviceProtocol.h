//
//  DeviceProtocol.h
//  Factory
//
//  Created by 陈吉 on 2016/10/27.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DeviceProtocol <NSObject>

/**
 *  打电话
 */
- (void)phoneCall;

/**
 *  系统信息
 *
 *  @return 返回系统描述信息
 */
- (NSString *)systemInfomation;

@end
