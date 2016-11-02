//
//  ViewController.m
//  Proxy
//
//  Created by 陈吉 on 2016/11/2.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "ViewController.h"
#import "MessageProtocol.h"
#import "ConcreteProxy.h"

@interface ViewController () <MessageProtocol>

@property (nonatomic, strong) ConcreteProxy *proxy;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.proxy = [[ConcreteProxy alloc] initWithCustomer:self];
    [self.proxy helloWorld];
    [self.proxy goodBye];
}

- (void)helloWorld {
    NSLog(@"helloWorld");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
