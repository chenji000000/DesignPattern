//
//  Person.m
//  Prototype
//
//  Created by 陈吉 on 2016/10/28.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)parametersCopyOperationWithBaseCopyObject:(Person *)baseCopyObject {
    
    baseCopyObject.name = self.name;
    baseCopyObject.age = self.age;
    
    //字典与数组的深层拷贝
    baseCopyObject.datas = [[[self.datas class] alloc] initWithArray:self.datas copyItems:YES];
    baseCopyObject.information = [[[self.information class] alloc] initWithDictionary:self.information copyItems:YES];
}

@end
