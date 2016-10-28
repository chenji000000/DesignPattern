//
//  BaseCopyObject.m
//  Prototype
//
//  Created by 陈吉 on 2016/10/28.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "BaseCopyObject.h"

@implementation BaseCopyObject

- (id)copyWithZone:(NSZone *)zone {
    BaseCopyObject *copy = [[self class] allocWithZone:zone];
    
    [self parametersCopyOperationWithBaseCopyObject:copy];
    
    return copy;
}

- (void)parametersCopyOperationWithBaseCopyObject:(BaseCopyObject *)baseCopyObject {

    //由子类重写
}

@end
