//
//  SortViewController.m
//  排序算法练习
//
//  Created by Kity on 16/5/17.
//  Copyright © 2016年 Kity_Pei. All rights reserved.
//

#import "SortViewController.h"

@interface SortViewController ()

@end

@implementation SortViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.view setShiftHeightAsDodgeViewForMLInputDodger:50.0f];
    [self.view registerAsDodgeViewForMLInputDodger];
    
    [self setUI];
}

/**
 *  设置ui布局
 */
- (void)setUI
{
    UILabel *titleLabel = [[UILabel alloc] init];
    titleLabel.text = @"提示：输入框输入为数字，且用[英文,]隔开,例如：1,3,5,4,2";
    titleLabel.numberOfLines = 0;
    titleLabel.textColor = [UIColor redColor];
    titleLabel.font = [UIFont systemFontOfSize:12.0f];
    [self.view addSubview:titleLabel];
    
    InputText = [[UITextField alloc] init];
    InputText.borderStyle = UITextBorderStyleRoundedRect;
    InputText.delegate = self;
    [self.view addSubview:InputText];
    
    inputLabel = [[UILabel alloc] init];
    inputLabel.text = @"输入转化为数组为：";
    inputLabel.numberOfLines = 0;
    inputLabel.font = [UIFont systemFontOfSize:12.0f];
    [self.view addSubview:inputLabel];
    
    outputLabel = [[UILabel alloc] init];
    outputLabel.text = @"经过排序后的数组为：";
    outputLabel.numberOfLines = 0;
    outputLabel.font = [UIFont systemFontOfSize:12.0f];
    [self.view addSubview:outputLabel];
    
    [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(DEVICE_WIDTH-20, 30));
        make.top.mas_equalTo(BAR_HEIGHT+20);
        make.left.mas_equalTo(10);
    }];
    
    [InputText mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(DEVICE_WIDTH-20, 30));
        make.top.equalTo(titleLabel.mas_bottom).offset(10);
        make.left.mas_equalTo(10);
    }];
    
    [inputLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(DEVICE_WIDTH-20, 30));
        make.left.mas_equalTo(10);
        make.top.equalTo(InputText.mas_bottom).offset(10);
    }];
    
    [outputLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(DEVICE_WIDTH-20, 30));
        make.left.mas_equalTo(10);
        make.top.equalTo(inputLabel.mas_bottom).offset(10);
    }];
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    //开始转换把textfield的内容
    /**
     *  1.
     *  2.
     *  3.
     *  4.
     *  5.
     */
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
