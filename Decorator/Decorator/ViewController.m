//
//  ViewController.m
//  Decorator
//
//  Created by 陈吉 on 2016/10/31.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "ViewController.h"

// 装饰器对象
#import "DecoratorGamePlay.h"

// category扩展了对象的行为
#import "GamePlay.h"
#import "GamePlay+MoreCommand.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //装饰器对象
    DecoratorGamePlay *gamePlayDecorator = [DecoratorGamePlay new];
    [gamePlayDecorator cheat];
    
    NSLog(@"---------------");
    
    //category模拟的装饰器
    GamePlay *gamePlay = [GamePlay new];
    [gamePlay cheat];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
