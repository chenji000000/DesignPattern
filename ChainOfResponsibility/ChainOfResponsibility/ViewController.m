//
//  ViewController.m
//  ChainOfResponsibility
//
//  Created by 陈吉 on 2016/11/3.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "ViewController.h"
#import "HeadChain.h"
#import "PhoneNumChain.h"
#import "EmailChain.h"
#import "UserNameChain.h"
#import "EndChain.h"

@interface ViewController ()

@property (nonatomic, strong) id <ChainOfResponsibilityProtocol>headChain;
@property (nonatomic, strong) id <ChainOfResponsibilityProtocol>phoneNumChain;
@property (nonatomic, strong) id <ChainOfResponsibilityProtocol>emailChain;
@property (nonatomic, strong) id <ChainOfResponsibilityProtocol>userNameChain;
@property (nonatomic, strong) id <ChainOfResponsibilityProtocol>endChain;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //创建责任链对象
    self.headChain = [[HeadChain alloc] init];
    self.phoneNumChain = [[PhoneNumChain alloc] init];
    self.emailChain = [[EmailChain alloc] init];
    self.userNameChain = [[UserNameChain alloc] init];
    self.endChain = [[EndChain alloc] init];
    
    //链接责任链
    self.headChain.successor = self.phoneNumChain;
    self.phoneNumChain.successor = self.emailChain;
    self.emailChain.successor = self.userNameChain;
    self.userNameChain.successor = self.endChain;
    
    //处理事件
    [self.headChain handlerRequest:@"15172076501"];
    [self.headChain handlerRequest:@"260682402@qq.com"];
    [self.headChain handlerRequest:@"12345678"];
    [self.headChain handlerRequest:@"---"];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
