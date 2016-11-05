//
//  IteratorProtocol.h
//  Iterator
//
//  Created by 陈吉 on 2016/11/5.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol IteratorProtocol <NSObject>

/*
 下一个对象
 @return 对象
 */
- (id)next;

/*
 是否存在下一个对象
 @return 是否存在下一个对象
 */
- (BOOL)hasNext;

/*
 内容
 
 @return 返回内容
 */
- (id)item;

@end
