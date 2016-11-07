//
//  Model.h
//  Memento
//
//  Created by 陈吉 on 2016/11/6.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MementoCenterProtocol.h"

@interface Model : NSObject <MementoCenterProtocol>

@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) NSNumber *age;

@end
