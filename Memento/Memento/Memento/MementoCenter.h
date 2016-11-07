//
//  MementoCenter.h
//  Memento
//
//  Created by 陈吉 on 2016/11/6.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MementoCenterProtocol.h"

@interface MementoCenter : NSObject

/*
 存储备忘录对象
 
 @param mementoObject 备忘录对象
 @param key 标记对象的键值
 */
+ (void)saveMementoObject:(id <MementoCenterProtocol>)mementoObject withKey:(NSString *)key;

/*
 获取备忘录对象
 @param key 标记对象的键值
 @return 备忘录对象
 */
+ (id)mementoObjectWithKey:(NSString *)key;

@end
