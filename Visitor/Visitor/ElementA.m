//
//  ElementA.m
//  Visitor
//
//  Created by 陈吉 on 2016/11/8.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "ElementA.h"
#import "VisitorProtocol.h"

@implementation ElementA

- (void)accept:(id<VisitorProtocol>)visitor {

    [visitor visitElement:self];
}

- (void)operation {

    NSLog(@"Element_A operation start.");
}

- (void)elementASpecialOperationA {

   NSLog(@"Element_A special operation."); 
}

@end
