//
//  Person.h
//  Prototype
//
//  Created by 陈吉 on 2016/10/28.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "BaseCopyObject.h"

@interface Person : BaseCopyObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *age;

@property (nonatomic, strong) NSArray *datas;
@property (nonatomic, strong) NSDictionary *information;

@end
