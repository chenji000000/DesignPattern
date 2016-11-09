//
//  ElementCollection.m
//  Visitor
//
//  Created by 陈吉 on 2016/11/8.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "ElementCollection.h"
#import "ElementProtocol.h"

@interface ElementCollection ()

@property (nonatomic, strong) NSMutableDictionary *elementsDictionary;

@end

@implementation ElementCollection

- (instancetype)init {

    self = [super init];
    if (self) {
        _elementsDictionary = [NSMutableDictionary dictionary];
    }
    return self;
    
}

- (void)addElement:(id<ElementProtocol>)element withKey:(NSString *)key {

    NSParameterAssert(element);
    NSParameterAssert(key);
    
    [self.elementsDictionary setObject:element forKey:key];
}

- (NSArray *)allKeys {

    return self.elementsDictionary.allKeys;
}

- (id<ElementProtocol>)elementWithKey:(NSString *)key {

    NSParameterAssert(key);
    
    return [self.elementsDictionary objectForKey:key];
}

@end
