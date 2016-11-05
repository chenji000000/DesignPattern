//
//  LinkedList.h
//  Iterator
//
//  Created by 陈吉 on 2016/11/5.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"

#import "IteratorProtocol.h"
#import "LinkedListIterator.h"

@interface LinkedList : NSObject

/*
 头节点
 */
@property (nonatomic, strong, readonly) Node *headNode;

/*
 节点的数目
 */
@property (nonatomic, assign, readonly) NSInteger numberOfNodes;

/*
 添加数据
 @param item 数据
 */
- (void)addItem:(id)item;

/*
 创建迭代器对象
 @return 迭代器对象
 */
- (id <IteratorProtocol>)createIterator;

@end
