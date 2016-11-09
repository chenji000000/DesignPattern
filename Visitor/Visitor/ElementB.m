//
//  ElementB.m
//  Visitor
//
//  Created by 陈吉 on 2016/11/8.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "ElementB.h"
#import "VisitorProtocol.h"

@implementation ElementB

- (void)accept:(id<VisitorProtocol>)visitor {

    [visitor visitElement:self];
}

- (void)operation {

    NSLog(@"Element_B operation start.");
}

- (void)elementBSpecialOperationB {

   NSLog(@"Element_B special operation."); 
}

@end
