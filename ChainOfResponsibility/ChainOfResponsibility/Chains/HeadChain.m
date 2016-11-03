//
//  HeadChain.m
//  ChainOfResponsibility
//
//  Created by 陈吉 on 2016/11/3.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "HeadChain.h"

@interface HeadChain ()

@property (nonatomic, weak) id <ChainOfResponsibilityProtocol> nextSuccessor;

@end

@implementation HeadChain

- (void)setSuccessor:(id<ChainOfResponsibilityProtocol>)successor {
    self.nextSuccessor = successor;
}

- (id<ChainOfResponsibilityProtocol>)successor {

    return self.nextSuccessor;
}

- (void)handlerRequest:(id)request {

    [self.successor handlerRequest:request];
}

@end
