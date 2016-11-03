//
//  TerminalExpression.m
//  Interpreter
//
//  Created by 陈吉 on 2016/11/3.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "TerminalExpression.h"

@implementation TerminalExpression

- (void)interpreter:(Context *)context {

    NSLog(@"终端解释器,context == %@", context.output);
}

@end
