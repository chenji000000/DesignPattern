//
//  VisitorProtocol.h
//  Visitor
//
//  Created by 陈吉 on 2016/11/8.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ElementProtocol.h"

@protocol VisitorProtocol <NSObject>

- (void)visitElement:(id <ElementProtocol>)element;

@end
