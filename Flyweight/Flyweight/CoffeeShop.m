//
//  CoffeeShop.m
//  Flyweight
//
//  Created by 陈吉 on 2016/11/2.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "CoffeeShop.h"
#import "CoffeeFlavor.h"
#import "Menu.h"

@interface CoffeeShop ()

@property (nonatomic, strong) NSMutableDictionary <NSNumber *, CoffeeFlavor *> *orders;
@property (nonatomic, strong) Menu *menu;

@end

@implementation CoffeeShop

- (instancetype)init {
    self = [super init];
    if (self) {
        _orders = [NSMutableDictionary dictionary];
        _menu = [[Menu alloc] init];
    }
    return self;
}

- (void)takeOrder:(NSString *)flavor table:(int)table {
    [self.orders setObject:[self.menu lookupWithFlavor:flavor] forKey:@(table)];
}

- (void)serve {
    NSArray *allkeys = self.orders.allKeys;
    for (id key in allkeys) {
        NSLog(@"[%@] Serving %@ to table %@", [self.orders objectForKey:key], [self.orders objectForKey:key].flavor, key);
    }
}

@end
