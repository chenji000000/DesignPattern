//
//  ViewController.m
//  Facade
//
//  Created by 陈吉 on 2016/11/1.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "ViewController.h"
#import "ShapeMaker.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [ShapeMaker drawCircleAndRectangle];
    [ShapeMaker drawCircleAndSquare];
    [ShapeMaker drawAll];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
