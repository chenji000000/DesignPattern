//
//  Menu.m
//  Flyweight
//
//  Created by 陈吉 on 2016/11/2.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "Menu.h"

@interface Menu ()

@property (nonatomic, strong) NSMutableDictionary <NSString *, CoffeeFlavor *> *flavors;

@end

@implementation Menu

- (instancetype)init {
    self = [super init];
    if (self) {
        _flavors = [NSMutableDictionary dictionary];
    }
    return self;
}

- (CoffeeFlavor *)lookupWithFlavor:(NSString *)flavor {
    NSParameterAssert(flavor);
    if ([self.flavors objectForKey:flavor] == nil) {
        CoffeeFlavor *coffeeFlavor = [[CoffeeFlavor alloc] init];
        coffeeFlavor.flavor = flavor;
        self.flavors[flavor] = coffeeFlavor;
    }
    return [self.flavors objectForKey:flavor];
}

@end
