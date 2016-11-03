//
//  ChainOfResponsibilityProtocol.h
//  ChainOfResponsibility
//
//  Created by 陈吉 on 2016/11/3.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol  ChainOfResponsibilityProtocol <NSObject>
/*
 设置接替对象
 
 @param successor 接替对象
 */
- (void)setSuccessor:(id <ChainOfResponsibilityProtocol>)successor;
/*
 返回接替对象
 
 @return 接替对象
 */
- (id <ChainOfResponsibilityProtocol>)successor;
/*
 处理请求
 
 @param request 请求
 */
- (void)handlerRequest:(id)request;

@end
