//
//  ViewController.m
//  ButtonArrange
//
//  Created by lidianchao on 2017/7/11.
//  Copyright © 2017年 lidianchao. All rights reserved.
//

#import "ViewController.h"
#import "ButtonCellTableViewCell.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UITableView *tableView = [[UITableView alloc] initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStylePlain];
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
    // Do any additional setup after loading the view, typically from a nib.
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 50;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cell_token = @"cell";
    ButtonCellTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cell_token];
    if(!cell)
    {
        cell = [[ButtonCellTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cell_token];
    }
    return cell;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
