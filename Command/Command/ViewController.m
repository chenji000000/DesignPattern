//
//  ViewController.m
//  Command
//
//  Created by 陈吉 on 2016/11/4.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "ViewController.h"
#import "Invoker.h"
#import "Receiver.h"
#import "MakeLighterCommand.h"
#import "MakeDarkerCommand.h"

typedef NS_ENUM(NSInteger, ViewControllerEnumValue) {

    kAddButtonTag = 10,
    kDelButtonTag
};

@interface ViewController ()

@property (strong, nonatomic) UIButton *addButton;
@property (strong, nonatomic) UIButton *delButton;
/*
 客户端接收器
 */
@property (strong, nonatomic) Receiver *receiver;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self initButtons];
    //创建客户端接收器
    self.receiver = [[Receiver alloc] init];
    self.receiver.colorView = self.view;
}
#pragma mark - 按钮初始化
- (void)initButtons {

    //delButton
    self.delButton = [[UIButton alloc] initWithFrame:CGRectMake(30, 100, 30, 30)];
    self.delButton.tag = kDelButtonTag;
    self.delButton.layer.borderWidth = 1.f;
    
    [self.delButton setTitle:@"-" forState:UIControlStateNormal];
    [self.delButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [self.delButton addTarget:self action:@selector(buttonsEvent:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.delButton];
    
    //addButton
    self.addButton = [[UIButton alloc] initWithFrame:CGRectMake(30 + 30, 100, 30, 30)];
    self.addButton.tag = kAddButtonTag;
    self.addButton.layer.borderWidth = 1.f;
    
    [self.addButton setTitle:@"+" forState:UIControlStateNormal];
    [self.addButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [self.addButton addTarget:self action:@selector(buttonsEvent:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.addButton];
}

- (void)buttonsEvent:(UIButton *)button {

    if (button.tag == kDelButtonTag) {
        //生成命令
        MakeLighterCommand *lighterCommand = [[MakeLighterCommand alloc] initWithReceiver:self.receiver parameter:0.1];
        //执行命令
        [[Invoker sharedInstance] addAndExecute:lighterCommand];
    } else if (button.tag == kAddButtonTag) {
        //生成命令
        MakeDarkerCommand *darkerCommand = [[MakeDarkerCommand alloc] initWithReceiver:self.receiver parameter:0.1];
        //执行命令
        [[Invoker sharedInstance] addAndExecute:darkerCommand];
        
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
