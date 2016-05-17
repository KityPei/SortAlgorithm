//
//  BaseViewController.m
//  排序算法练习
//
//  Created by Kity on 16/5/17.
//  Copyright © 2016年 Kity_Pei. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()
{
    NSMutableArray *arrayData;
}
@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"排序算法";
    
    arrayData = [NSMutableArray arrayWithObjects:@"选择排序算法",@"冒泡排序算法",@"快速排序算法",@"插入排序",@"折半插入排序",@"希尔排序",@"堆排序算法", nil];
    
    UITableView *PPTable = [[UITableView alloc] init];
    PPTable.delegate = self;
    PPTable.dataSource = self;
    [self.view addSubview:PPTable];
    
    [PPTable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(DEVICE_WIDTH, DEVICE_HEIGHT));
    }];
    
    //隐藏多余的没有内容的cell
    [PPTable setTableFooterView:[[UIView alloc] initWithFrame:CGRectZero]];
}

#pragma mark -
#pragma mark --uitableviewdelegate--
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell.textLabel.text = [arrayData objectAtIndex:indexPath.row];
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return arrayData.count;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 44.0f;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    SortViewController *VC = [[SortViewController alloc] init];
    VC.title = [arrayData objectAtIndex:indexPath.row];
    [self.navigationController pushViewController:VC animated:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
