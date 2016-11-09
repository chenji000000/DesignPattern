//
//  ElementCollection.h
//  Visitor
//
//  Created by 陈吉 on 2016/11/8.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ElementProtocol;

@interface ElementCollection : NSObject

/*
 添加元素
 @param element 元素
 @param key 元素的键值
 */
- (void)addElement:(id <ElementProtocol>)element withKey:(NSString *)key;

/*
 获取所有元素的键值
 @return 所有元素的键值
 */
- (NSArray *)allKeys;

/*
 根据元素键值获取元素
 @param key 元素的键值
 @return 元素
 */
- (id <ElementProtocol>)elementWithKey:(NSString *)key;

@end
