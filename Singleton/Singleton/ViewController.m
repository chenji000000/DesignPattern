//
//  ViewController.m
//  Singleton
//
//  Created by 陈吉 on 2016/10/28.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "ViewController.h"
#import "Singleton.h"
#import "SubSingleton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"%@", [Singleton sharedInstance]);
    //    NSLog(@"%@", [Singleton new]);
    //    NSLog(@"%@", [[Singleton sharedInstance] copy]);
    //    NSLog(@"%@", [SubSingleton sharedInstance]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
