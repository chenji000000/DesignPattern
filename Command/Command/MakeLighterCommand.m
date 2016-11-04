//
//  MakeLighterCommand.m
//  Command
//
//  Created by 陈吉 on 2016/11/4.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "MakeLighterCommand.h"

@interface MakeLighterCommand ()

@property (nonatomic, weak) Receiver *receiver;
@property (nonatomic) CGFloat parameter;

@end

@implementation MakeLighterCommand

- (id)initWithReceiver:(Receiver *)receiver parameter:(CGFloat)parameter {

    self = [super init];
    if (self) {
        _receiver = receiver;
        _parameter = parameter;
    }
    return self;
}

- (void)execute {

    [self.receiver makeViewLighter:self.parameter];
}

@end
