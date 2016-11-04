//
//  MakeDarkerCommand.m
//  Command
//
//  Created by 陈吉 on 2016/11/4.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "MakeDarkerCommand.h"

@interface MakeDarkerCommand ()

@property (nonatomic, weak) Receiver *receiver;
@property (nonatomic) CGFloat parameter;

@end

@implementation MakeDarkerCommand

- (id)initWithReceiver:(Receiver *)receiver parameter:(CGFloat)parameter {

    self = [super init];
    if (self) {
        _receiver = receiver;
        _parameter = parameter;
    }
    return self;
}

- (void)execute {

    [self.receiver makeViewDarker:self.parameter];
}
@end
