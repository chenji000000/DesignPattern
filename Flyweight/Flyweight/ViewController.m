//
//  ViewController.m
//  Flyweight
//
//  Created by 陈吉 on 2016/11/2.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "ViewController.h"
#import "CoffeeShop.h"

@interface ViewController ()

@property (nonatomic, strong) CoffeeShop *coffeeShop;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //创建咖啡厅
    self.coffeeShop = [[CoffeeShop alloc] init];
    //相同类型的数据共用
    [self.coffeeShop takeOrder:@"Cappuccino" table:1];
    [self.coffeeShop takeOrder:@"Frappe" table:10];
    [self.coffeeShop takeOrder:@"Cappuccino" table:6];
    [self.coffeeShop takeOrder:@"Espresso" table:9];
    [self.coffeeShop takeOrder:@"Frappe" table:8];
    //开始服务
    [self.coffeeShop serve];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
