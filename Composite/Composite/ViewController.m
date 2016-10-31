//
//  ViewController.m
//  Composite
//
//  Created by 陈吉 on 2016/10/31.
//  Copyright © 2016年 陈吉. All rights reserved.
//

#import "ViewController.h"
#import "FileCell.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self initRootFile];
    [self initTableView];
}

- (void)initRootFile {
    
    //创建根节点
    self.rootFile = [File createWithFileType:kFolder name:@"RootFolder"];
    
    // 创建文件夹 A , B, C
    File *A = [File createWithFileType:kFolder name:@"A"];
    File *B = [File createWithFileType:kFolder name:@"B"];
    File *C = [File createWithFileType:kFolder name:@"C"];
    
    File *a_1 = [File createWithFileType:kFolder name:@"a_1"];
    File *a_2 = [File createWithFileType:kFolder name:@"a_2"];
    File *a_3 = [File createWithFileType:kFile name:@"a_3"];
    File *a_4 = [File createWithFileType:kFolder name:@"a_4"];
    [A add:a_1];
    [A add:a_2];
    [A add:a_3];
    [A add:a_4];
    
    [a_1 add:[File createWithFileType:kFolder name:@"a_1_1"]];
    [a_1 add:[File createWithFileType:kFile name:@"a_1_2"]];
    [a_1 add:[File createWithFileType:kFile name:@"a_1_3"]];
    
    // 创建文件 D
    File *D = [File createWithFileType:kFile name:@"D"];
    
    // 创建文件夹 E
    File *E = [File createWithFileType:kFolder name:@"E"];
    
    // 添加文件
    [self.rootFile add:A];
    [self.rootFile add:B];
    [self.rootFile add:C];
    [self.rootFile add:D];
    [self.rootFile add:E];
    
    // 设置标题
    self.title = self.rootFile.name;
}

#pragma mark - tableView相关
- (void)initTableView {
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self.tableView registerClass:[FileCell class] forCellReuseIdentifier:@"fileCell"];
    [self.view addSubview:self.tableView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [self.rootFile files].count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    FileCell *cell = [tableView dequeueReusableCellWithIdentifier:@"fileCell"];
    
    // Configure the cell...
    cell.data = [self.rootFile files][indexPath.row];
    cell.indexPath = indexPath;
    cell.tableView = tableView;
    cell.controller = self;
    
    [cell loadContent];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 80.f;
}


@end
