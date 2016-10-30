//
//  BusinessCardAdapter.h
//  Adapter
//
//  Created by 陈吉 on 2016/10/28.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "BusinessCardAdapterProtocol.h"

@interface BusinessCardAdapter : NSObject<BusinessCardAdapterProtocol>
/**
 *  输入对象
 */
@property (nonatomic, weak) id data;
/**
 *  与输入对象建立联系
 *
 *  @param data 输入的对象
 *
 *  @return 实力对象
 */
- (instancetype)initWithData:(id)data;

@end
