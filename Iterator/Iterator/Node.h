//
//  Node.h
//  Iterator
//
//  Created by 陈吉 on 2016/11/5.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject

/*
 下一个节点
 */
@property (nonatomic, strong) Node *nextNode;

/*
 节点里面的内容
 */
@property (nonatomic, strong) id item;

/*
 初始化节点
 @param item 节点携带的内容
 @return 节点
 */
- (instancetype)initWithItem:(id)item;

@end
