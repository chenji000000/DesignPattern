//
//  CommandProtocol.h
//  Command
//
//  Created by 陈吉 on 2016/11/4.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CommandProtocol <NSObject>

@required
/*
 执行指令
 */
- (void)execute;

@end
