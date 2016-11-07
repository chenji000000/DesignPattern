//
//  ViewController.m
//  Memento
//
//  Created by 陈吉 on 2016/11/6.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "ViewController.h"
#import "Model.h"
#import "MementoCenter.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //初始化model
    Model *model = [[Model alloc] init];
    
    //获取状态
    id state = [MementoCenter mementoObjectWithKey:@"Model"];
    
    //恢复状态
    [model recoverFromState:state];
    
    //打印
    NSLog(@"name:%@ age:%@", model.name, model.age);
    
    //赋值
    model.name = @"chenji";
    model.age = @27;
    
    //存储状态
    [MementoCenter saveMementoObject:model withKey:@"Model"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
