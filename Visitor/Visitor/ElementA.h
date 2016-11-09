//
//  ElementA.h
//  Visitor
//
//  Created by 陈吉 on 2016/11/8.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ElementProtocol.h"

@interface ElementA : NSObject <ElementProtocol>

/*
 元素A持有的操作
 */
- (void)elementASpecialOperationA;

@end
