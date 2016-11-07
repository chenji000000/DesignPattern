//
//  StateType.h
//  State
//
//  Created by 陈吉 on 2016/11/7.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import <Foundation/Foundation.h>

/* StateType是作为虚类存在的，做了空实现，实现延迟到子类中去执行 */

@interface StateType : NSObject

//处理数据
- (void)handleData:(id)data;

@end
