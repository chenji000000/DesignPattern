//
//  ViewController.m
//  AbstractFactory 抽象工厂模式
//
//  Created by 陈吉 on 2016/10/27.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "ViewController.h"
#import "AcmeBrandingFactory.h"
#import "SierraBrandingFactory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    BrandingFactory *acmeFactory = [AcmeBrandingFactory factory];
    [acmeFactory brandedView];
    [acmeFactory brandedMainButton];
    
    BrandingFactory *sierraFactory = [SierraBrandingFactory factory];
    [sierraFactory brandedView];
    [sierraFactory brandedMainButton];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
