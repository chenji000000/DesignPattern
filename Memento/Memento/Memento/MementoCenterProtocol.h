//
//  MementoCenterProtocol.h
//  Memento
//
//  Created by 陈吉 on 2016/11/6.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MementoCenterProtocol <NSObject>

@required
/*
 生成当前状态对象值
 @return 对象值
 */
- (id)currentState;

/*
 恢复到指定的状态
 @param state 状态
 */
- (void)recoverFromState:(id)state;

@end
