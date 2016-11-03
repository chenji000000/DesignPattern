//
//  ViewController.m
//  Interpreter
//
//  Created by 陈吉 on 2016/11/3.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "ViewController.h"
#import "Context.h"
#import "TerminalExpression.h"
#import "NonTernimalExpression.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Context *context = [[Context alloc] initWithInput:@"123456"];
    NSMutableArray *list = [[NSMutableArray alloc] init];
    [list addObject:[[TerminalExpression alloc] init]];
    [list addObject:[[NonTernimalExpression alloc] init]];
    [list addObject:[[TerminalExpression alloc] init]];
    [list addObject:[[TerminalExpression alloc] init]];
    
    for (AbstractExpression *exp in list) {
        [exp interpreter:context];
    }
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
