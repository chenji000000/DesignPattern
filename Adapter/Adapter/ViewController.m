//
//  ViewController.m
//  Adapter
//
//  Created by 陈吉 on 2016/10/28.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "ViewController.h"
#import "BusinessCardView.h"

#import "NormalModel.h"
#import "NormalModelAdapter.h"

#import "SpecialModel.h"
#import "SpecialModelAdapter.h"

#import "CommonUsedAdapter.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    [self normalModelAdapterExmaple];
//    [self specialModelAdapterExample];
    [self commonModelAdapterExample];
    
}
/**
 *  适配类型1Model
 */
- (void)normalModelAdapterExmaple {
    //数据源
    NormalModel *data = [[NormalModel alloc] init];
    data.name = @"chenji";
    data.lineColor = [UIColor redColor];
    data.phoneNumber = @"151-7207-6501";
    
    //适配器类
    BusinessCardAdapter *adapter = [[NormalModelAdapter alloc] initWithData:data];
    BusinessCardView *cardView = [[BusinessCardView alloc] initWithFrame:BUSINESS_FRAME];
    cardView.center = self.view.center;
    [cardView loadData:adapter];
    [self.view addSubview:cardView];
    
}

- (void)specialModelAdapterExample {
    //数据源
    SpecialModel *data = [[SpecialModel alloc] init];
    data.name = @"haha";
    data.colorString = @"green";
    data.phoneNumber = @"151-7207-6501";
    
    //适配器类
    BusinessCardAdapter *adapter = [[SpecialModelAdapter alloc] initWithData:data];
    BusinessCardView *cardView = [[BusinessCardView alloc] initWithFrame:BUSINESS_FRAME];
    cardView.center = self.view.center;
    [cardView loadData:adapter];
    [self.view addSubview:cardView];
}
/**
 *  通用型适配器
 */
- (void)commonModelAdapterExample {
    //数据源
    NormalModel *data1 = [[NormalModel alloc] init];
    data1.name = @"chenji";
    data1.lineColor = [UIColor redColor];
    data1.phoneNumber = @"151-7207-6501";
    
    //数据源
    SpecialModel *data2 = [[SpecialModel alloc] init];
    data2.name = @"haha";
    data2.colorString = @"green";
    data2.phoneNumber = @"151-7207-6501";

    
    //通用型适配器类（可以加载数据data1或者data2）
    BusinessCardAdapter *adapter = [[CommonUsedAdapter alloc] initWithData:data2];
    BusinessCardView *cardView = [[BusinessCardView alloc] initWithFrame:BUSINESS_FRAME];
    cardView.center = self.view.center;
    [cardView loadData:adapter];
    [self.view addSubview:cardView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
