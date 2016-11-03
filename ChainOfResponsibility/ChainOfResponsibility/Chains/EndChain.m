//
//  EndChain.m
//  ChainOfResponsibility
//
//  Created by 陈吉 on 2016/11/3.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "EndChain.h"

@interface EndChain ()

@property (nonatomic, weak) id <ChainOfResponsibilityProtocol> nextSuccessor;

@end

@implementation EndChain

- (void)setSuccessor:(id<ChainOfResponsibilityProtocol>)successor {

    self.nextSuccessor = successor;
}

- (id<ChainOfResponsibilityProtocol>)successor {

    return self.nextSuccessor;
}

- (void)handlerRequest:(id)request {

    NSLog(@"此任务没有责任链可以处理");
}

@end
