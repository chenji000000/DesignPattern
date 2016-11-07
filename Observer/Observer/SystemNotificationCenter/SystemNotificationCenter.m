//
//  SystemNotificationCenter.m
//  Observer
//
//  Created by 陈吉 on 2016/11/7.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "SystemNotificationCenter.h"

static SystemNotificationCenter *_shareInstance = nil;
static NSMutableDictionary *_subscriptionNumberDictionary = nil;

@implementation SystemNotificationCenter

+ (void)initialize {

    if (self == [SystemNotificationCenter class]) {
        _shareInstance = [SystemNotificationCenter new];
        _subscriptionNumberDictionary = [NSMutableDictionary dictionary];
    }
}

+ (void)addCustomer:(id<SystemNotificationCenterProtocol>)customer withNotificationName:(NSString *)name {

    NSHashTable *hashTable = [self existSubscriptionNumber:name];
    [hashTable addObject:customer];
}

+ (void)removeCustomer:(id<SystemNotificationCenterProtocol>)customer withNotificationName:(NSString *)name {

    NSHashTable *hashTable = [self existSubscriptionNumber:name];
    if (hashTable && customer) {
        [hashTable removeObject:customer];
    }
}

+ (void)registerNotificationName:(NSString *)name {

    NSHashTable *hashTable = [self existSubscriptionNumber:name];
    
    //创建hash表 + 监听对应的通知
    if (hashTable == nil) {
        hashTable = [NSHashTable weakObjectsHashTable];
        [_subscriptionNumberDictionary setObject:hashTable forKey:name];
        [[NSNotificationCenter defaultCenter] addObserver:_shareInstance selector:@selector(notificationEvent:) name:name object:nil];
    }
}

+ (void)removeNotificationName:(NSString *)name {

    //移除hash表 + 移除对应的通知
    if ([self existSubscriptionNumber:name]) {
        [_subscriptionNumberDictionary removeObjectForKey:name];
        [[NSNotificationCenter defaultCenter] removeObserver:_shareInstance name:name object:nil];
    }
}

#pragma mark - 私有方法
- (void)notificationEvent:(id)sender {

    NSNotification *notification = sender;
    NSString *name = notification.name;
    id object = notification.object;
    
    NSHashTable *hashTable = [[self class] existSubscriptionNumber:name];
    if (hashTable) {
        NSEnumerator *enumerator = [hashTable objectEnumerator];
        
        id <SystemNotificationCenterProtocol> customer = nil;
        while (customer = [enumerator nextObject]) {
            if ([customer respondsToSelector:@selector(listenWithNotificationName:eventObject:)]) {
                [customer listenWithNotificationName:name eventObject:object];
            }
        }
    }
}

+ (NSHashTable *)existSubscriptionNumber:(NSString *)subscriptionNumber {

    return [_subscriptionNumberDictionary objectForKey:subscriptionNumber];
}

@end
