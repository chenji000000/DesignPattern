//
//  LinkedList.m
//  Iterator
//
//  Created by 陈吉 on 2016/11/5.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "LinkedList.h"

@interface LinkedList ()

/*
 头节点
 */
@property (nonatomic, strong, readwrite) Node *headNode;

/*
 节点的数量
 */
@property (nonatomic, assign, readwrite) NSInteger numberOfNodes;

@end

@implementation LinkedList

- (void)addItem:(id)item {

    if (self.headNode == nil) {
        
        self.headNode = [[Node alloc] initWithItem:item];
    } else {
    
        [self addItem:item node:self.headNode];
    }
    
    self.numberOfNodes++;
}

- (id <IteratorProtocol>)createIterator {

    return [[LinkedListIterator alloc] initWithLinkedList:self];
}

#pragma mark - Private Methods
- (void)addItem:(id)item node:(Node *)node {

    if (node.nextNode == nil) {
        
        node.nextNode = [[Node alloc] initWithItem:item];
    } else {
    
        [self addItem:item node:node.nextNode];
    }
}

@end
