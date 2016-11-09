//
//  ElementProtocol.h
//  Visitor
//
//  Created by 陈吉 on 2016/11/8.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol VisitorProtocol;

@protocol ElementProtocol <NSObject>

/*
 接收访问者
 @param visitor 访问者对象
 */
- (void)accept:(id <VisitorProtocol>)visitor;

/*
 元素公共的操作
 */
- (void)operation;

@end
