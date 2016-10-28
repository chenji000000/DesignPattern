//
//  ViewController.m
//  Factory
//
//  Created by 陈吉 on 2016/10/27.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "ViewController.h"
#import "DeviceCreator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    BaseDevice *iPhone = [DeviceCreator deviceCreatorWithDeviceType:kiPhone];
    [iPhone phoneCall];
    NSLog(@"%@", [iPhone systemInfomation]);
    
    BaseDevice *android = [DeviceCreator deviceCreatorWithDeviceType:kAndroid];
    [android phoneCall];
    NSLog(@"%@", [android systemInfomation]);
    
    BaseDevice *windows = [DeviceCreator deviceCreatorWithDeviceType:kWindows];
    [windows phoneCall];
    NSLog(@"%@", [windows systemInfomation]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
