//
//  RootViewController.m
//  CellPhoneItem3
//
//  Created by lanouhn on 15/6/23.
//  Copyright (c) 2015年 lanou3g.com. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(100, 100, 100, 100);
    button.backgroundColor = [UIColor redColor];
    [self.view addSubview:button];
    [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    
    self.navigationController.navigationBar.barTintColor = kNavColor;
}

- (void)buttonAction:(UIButton *)sender
{
#pragma mark - tabBar的设定
    // 产品详情
    ProductDetailsViewController *proVC = [[ProductDetailsViewController alloc] init];
    UINavigationController *proNV = [[UINavigationController alloc] initWithRootViewController:proVC];
    proNV.tabBarItem.title = @"产品详情";
    
    // 详细参数
    DetailedParametersViewController *detVC = [[DetailedParametersViewController alloc] init];
    UINavigationController *detNV = [[UINavigationController alloc] initWithRootViewController:detVC];
    detNV.tabBarItem.title = @"详细参数";
    
    // 图片展示
    PicturViewController *picVC = [[PicturViewController alloc] init];
    UINavigationController *picNV = [[UINavigationController alloc] initWithRootViewController:picVC];
    picNV.tabBarItem.title = @"图片展示";
    
    UITabBarController *tabBar = [[UITabBarController alloc] init];
    NSArray *array = @[proNV , detNV , picNV];
    tabBar.viewControllers = array;
    
    [self presentViewController:tabBar animated:YES completion:nil];
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
