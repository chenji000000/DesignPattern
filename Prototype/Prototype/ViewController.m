//
//  ViewController.m
//  Prototype
//
//  Created by 陈吉 on 2016/10/28.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "Model.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Model *model = [Model new];
    
    Person *personOne = [[Person alloc] init];
    personOne.name = @"chenji";
    personOne.age = @"27";
    personOne.datas = @[model, @"A", @"B"];
    personOne.information = @{@"C": model};
    NSLog(@"%@ %@ %@ %@ %@", personOne, personOne.name, personOne.age, personOne.datas, personOne.information);
    
    Person *personTwo = personOne.copy;
    personTwo.name = @"haha";
    NSLog(@"%@ %@ %@ %@ %@", personTwo, personTwo.name, personTwo.age, personTwo.datas, personTwo.information);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
