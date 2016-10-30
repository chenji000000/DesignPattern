//
//  NormalModel.h
//  Adapter
//
//  Created by 陈吉 on 2016/10/28.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NormalModel : NSObject
/**
 *  名字
 */
@property (nonatomic, strong) NSString *name;
/**
 *  线条颜色
 */
@property (nonatomic, strong) UIColor *lineColor;
/**
 *  电话号码
 */
@property (nonatomic, strong) NSString *phoneNumber;

@end
