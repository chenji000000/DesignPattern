//
//  LinkedListIterator.h
//  Iterator
//
//  Created by 陈吉 on 2016/11/5.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IteratorProtocol.h"

@class LinkedList;

@interface LinkedListIterator : NSObject <IteratorProtocol>

/*
 由链表进行初始化
 
 @param linkedList 链表对象
 
 @return 迭代器对象
 */
- (id)initWithLinkedList:(LinkedList *)linkedList;

@end
