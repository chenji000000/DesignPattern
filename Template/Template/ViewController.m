//
//  ViewController.m
//  Template
//
//  Created by 陈吉 on 2016/11/3.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "ViewController.h"
#import "Monopoly.h"
#import "Chess.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //chess game
    id <GameProtocol> chess = [[Chess alloc] init];
    chess.playerCount = 2;
    [chess initializeGame];
    [chess makePlay];
    [chess endOfGame];
    
    //monopoly game
    id <GameProtocol> monopoly = [[Monopoly alloc] init];
    monopoly.playerCount = 4;
    [monopoly initializeGame];
    [monopoly makePlay];
    [monopoly endOfGame];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
