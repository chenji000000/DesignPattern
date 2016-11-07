//
//  NormalModel.h
//  State
//
//  Created by 陈吉 on 2016/11/7.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import <Foundation/Foundation.h>

/* 定义的两种状态 */
#import "StateOne.h"
#import "StateTwo.h"

typedef NS_ENUM(NSUInteger, EWork) {

    iOS_developer,
    Android_developer,
    none
};

@interface NormalModel : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSNumber *age;
@property (nonatomic) EWork workType;

//请求状态切换
- (void)requestState:(StateType *)type;

@end
