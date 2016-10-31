//
//  File.h
//  Composite
//
//  Created by 陈吉 on 2016/10/31.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, FileType) {
    kFolder, //文件夹
    kFile //文件
};

@interface File : NSObject

#pragma mark - 基本属性
/**
 *  文件类型
 */
@property (nonatomic) FileType fileType;
/**
 *  文件夹或者文件的名字
 */
@property (nonatomic, strong) NSString *name;
/**
 *  添加文件
 *
 *  @param file 文件
 */
- (void)add:(File *)file;
/**
 *  所有文件
 *
 *  @return 文件的文件夹
 */
- (NSArray <File *> *)files;

#pragma mark - 便利构造器
/**
 *  返回创建出来的文件夹或者文件
 *
 *  @param type 文件类型
 *  @param name 文件名字
 *
 *  @return 创建出来的实例对象
 */
+ (instancetype)createWithFileType:(FileType)type name:(NSString *)name;

@end
