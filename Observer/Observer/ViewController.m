//
//  ViewController.m
//  Observer
//
//  Created by 陈吉 on 2016/11/7.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "ViewController.h"
#import "SubscriptionServiceCenter.h"

#define SCIENCE @"SCIENCE"
#define NATURE @"NATURE"

@interface ViewController () <SubscriptionServiceCenterProtocol>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //创建订阅号 - SCIENCE NATURE
    [SubscriptionServiceCenter createSubscriptionNumber:SCIENCE];
    [SubscriptionServiceCenter createSubscriptionNumber:NATURE];
    
    //客户添加了订阅号 - SCIENCE NATURE
    [SubscriptionServiceCenter addCustomer:self withSubscriptionNumber:SCIENCE];
    [SubscriptionServiceCenter addCustomer:self withSubscriptionNumber:NATURE];
    
    //订阅中心给订阅号 - SCIENCE NATURE 发送订阅信息
    [SubscriptionServiceCenter sendMessage:@"Message1" toSubscriptionNumber:SCIENCE];
    [SubscriptionServiceCenter sendMessage:@"Message2" toSubscriptionNumber:NATURE];
}

- (void)subscriptionMessage:(id)message subscriptionNumber:(NSString *)subscriptionNumber {

    if ([subscriptionNumber isEqualToString:NATURE]) {
        
        NSLog(@"自然杂志 - %@", message);
    } else if ([subscriptionNumber isEqualToString:SCIENCE]) {
    
        NSLog(@"科学杂志 - %@", message);
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
