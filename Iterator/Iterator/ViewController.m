//
//  ViewController.m
//  Iterator
//
//  Created by 陈吉 on 2016/11/5.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "ViewController.h"

#import "LinkedList.h"
#import "LinkedListIterator.h"

@interface ViewController ()

@property (nonatomic, strong) LinkedList *linkedList;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //创建链表结构
    self.linkedList = [[LinkedList alloc] init];
    
    //添加链表元素
    [self.linkedList addItem:@"1"];
    [self.linkedList addItem:@"2"];
    [self.linkedList addItem:@"3"];
    [self.linkedList addItem:@"4"];
    [self.linkedList addItem:@"5"];
    [self.linkedList addItem:@"6"];
    
    //创建迭代器
    id <IteratorProtocol> iterator = [self.linkedList createIterator];
    
    //进行元素迭代
    while ([iterator hasNext]) {
        
        NSLog(@"%@", iterator.item);
        [iterator next];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
