//
//  LinkedListIterator.m
//  Iterator
//
//  Created by 陈吉 on 2016/11/5.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "LinkedListIterator.h"
#import "LinkedList.h"

@interface LinkedListIterator ()

@property (nonatomic, weak) LinkedList *linkedList;
@property (nonatomic, weak) Node *currentNode;

@end

@implementation LinkedListIterator

- (id)initWithLinkedList:(LinkedList *)linkedList {

    if (self = [super init]) {
        
        _linkedList = linkedList;
        _currentNode = linkedList.headNode;
    }
    return self;
}

- (id)next {

    id item = self.currentNode.item;
    self.currentNode = self.currentNode.nextNode;
    return item;
}

- (BOOL)hasNext {

    if (self.currentNode == nil) {
        
        return NO;
    } else {
    
        return YES;
    }
}

- (id)item {

    return self.currentNode.item;
}

@end
