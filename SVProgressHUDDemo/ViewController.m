//
//  ViewController.m
//  SVProgressHUDDemo
//
//  Created by Haoyipeng on 16/9/27.
//  Copyright © 2016年 chunyu. All rights reserved.
//

#import "ViewController.h"
#import "SVProgressHUD.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [SVProgressHUD setErrorImage:nil];
    [SVProgressHUD setDefaultStyle:SVProgressHUDStyleDark];
    
    UIButton *showBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    showBtn.frame = CGRectMake(100, 100, 100, 100);
    [showBtn setTitle:@"show error" forState:UIControlStateNormal];
    [showBtn addTarget:self action:@selector(show:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:showBtn];
    
}

- (void)show:(id)sender {
    
    [SVProgressHUD showErrorWithStatus:@"这是一条错误信息这是一条错误信息这是一条错误信息这是一条错误信息这是一条错误信息这是一条错误信息"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
