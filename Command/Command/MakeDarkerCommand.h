//
//  MakeDarkerCommand.h
//  Command
//
//  Created by 陈吉 on 2016/11/4.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommandProtocol.h"
#import "Receiver.h"

@interface MakeDarkerCommand : NSObject <CommandProtocol>

- (id)initWithReceiver:(Receiver *)receiver parameter:(CGFloat)parameter;

@end
