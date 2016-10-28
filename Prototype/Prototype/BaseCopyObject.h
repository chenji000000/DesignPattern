//
//  BaseCopyObject.h
//  Prototype
//
//  Created by 陈吉 on 2016/10/28.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseCopyObject : NSObject

/**
 *  ==>子类不要重复写此方法<==
 *
 *  复制操作
 *
 *  @param zone
 *
 *  @return 新复制的对象
 */
- (id)copyWithZone:(NSZone *)zone;

- (void)parametersCopyOperationWithBaseCopyObject:(BaseCopyObject *)baseCopyObject;

@end
