//
//  ConcreteProxy.h
//  Proxy
//
//  Created by 陈吉 on 2016/11/2.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "AbstractProxy.h"
#import "MessageProtocol.h"

@interface ConcreteProxy : AbstractProxy <MessageProtocol>

@end
