//
//  ViewController.m
//  Visitor
//
//  Created by 陈吉 on 2016/11/8.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "ViewController.h"
#import "ElementCollection.h"

#import "ElementA.h"
#import "ElementB.h"

#import "Visitor.h"

@interface ViewController ()

@property (nonatomic, strong) ElementCollection *collection;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //创建集合
    self.collection = [[ElementCollection alloc] init];
    
    //给集合添加元素
    [self.collection addElement:[[ElementA alloc] init] withKey:@"ElementA"];
    [self.collection addElement:[[ElementB alloc] init] withKey:@"ElementB"];
    
    //遍历元素
    for (int i = 0; i < self.collection.allKeys.count; i++) {
        
        NSString *key = self.collection.allKeys[i];
        id <ElementProtocol> element = [self.collection elementWithKey:key];
        
        //接收访问者
        Visitor *visitor = [[Visitor alloc] init];
        [element accept:visitor];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
