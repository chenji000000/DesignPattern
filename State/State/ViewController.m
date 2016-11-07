//
//  ViewController.m
//  State
//
//  Created by 陈吉 on 2016/11/7.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "ViewController.h"
#import "NormalModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /* 状态模式中的状态都是可以重复赋值让对象恢复某种状态的，并不是一种算法来让对象进入到一种算法之后的结果，与策略模式有差异 */
    
    NormalModel *model = [NormalModel new];
    
    //切换到状态1
    [model requestState:[StateOne new]];
    
    //切换到状态2
    [model requestState:[StateTwo new]];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
