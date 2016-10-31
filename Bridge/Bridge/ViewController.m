//
//  ViewController.m
//  Bridge
//
//  Created by 陈吉 on 2016/10/31.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "ViewController.h"
#import "GameBoyEmulator.h"
#import "GameBoyConsoleController.h"
#import "GameGearEmulator.h"
#import "GameGearConsoleController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    GameBoyConsoleController *gameBoyConsoleController = [GameBoyConsoleController new];
    gameBoyConsoleController.emulator = [GameBoyEmulator new];
    [gameBoyConsoleController up];
    
    GameGearConsoleController *gameGearConsoleController = [GameGearConsoleController new];
    gameGearConsoleController.emulator = [GameGearEmulator new];
    [gameGearConsoleController up];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
