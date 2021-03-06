
//
//  PhoneNumChain.m
//  ChainOfResponsibility
//
//  Created by 陈吉 on 2016/11/3.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "PhoneNumChain.h"
#import "RegExCategories.h"

@interface PhoneNumChain ()

@property (nonatomic, weak) id <ChainOfResponsibilityProtocol> nextSuccessor;

@end

@implementation PhoneNumChain

- (void)setSuccessor:(id<ChainOfResponsibilityProtocol>)successor {

    self.nextSuccessor = successor;
}

- (id<ChainOfResponsibilityProtocol>)successor {
    
    return self.nextSuccessor;
}

- (void)handlerRequest:(id)request {

    NSString *string = request;
    
    if ([string isKindOfClass:[NSString class]] && string.length) {
        //匹配电话号码（手机号以13，15，18开头，八个\d数字字符）
        BOOL isMatch = [string isMatch:RX(@"^((13[0-9])|(15[^4,\\D])|(18[0,0-9]))\\d{8}$")];
        
        if (isMatch) {
            NSLog(@"%@ 是电话号码", string);
        } else {
        
            [self.successor handlerRequest:request];
        }
    }
}

@end
