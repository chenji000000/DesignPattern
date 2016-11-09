//
//  Visitor.m
//  Visitor
//
//  Created by 陈吉 on 2016/11/8.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "Visitor.h"

@interface Visitor ()

@end

@implementation Visitor

- (void)visitElementA:(ElementA *)elementA {

    [elementA operation];
    [elementA elementASpecialOperationA];
}

- (void)visitElementB:(ElementB *)elementB {

    [elementB operation];
    [elementB elementBSpecialOperationB];
}

- (void)visitElement:(id<ElementProtocol>)element {

    if ([element isMemberOfClass:[ElementA class]]) {
        
        [self visitElementA:element];
    } else if ([element isMemberOfClass:[ElementB class]]) {
    
        [self visitElementB:element];
    }
}

@end
