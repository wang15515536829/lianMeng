//
//  ProductDetailsViewController.m
//  CellPhoneItem3
//
//  Created by lanouhn on 15/6/23.
//  Copyright (c) 2015年 lanou3g.com. All rights reserved.
//

#import "ProductDetailsViewController.h"

@interface ProductDetailsViewController ()<UIScrollViewDelegate>
@property (nonatomic , assign) int a;   // 通过a的值来控收藏按钮的状态

@end

@implementation ProductDetailsViewController



- (void)viewDidLoad {
    [super viewDidLoad];

    // 填补导航条空隙，系统会默认紧贴导航条下方的坐标为0
    if ([self respondsToSelector:@selector(setEdgesForExtendedLayout:)]) {
        self.edgesForExtendedLayout = UIRectEdgeNone;
    }
    
    self.proView = [[ProductDetailsView alloc] initWithFrame:CGRectMake(self.view.frame.origin.x, 40, self.view.frame.size.width, self.view.frame.size.height - 49 - self.navigationController.navigationBar.frame.size.height - kStatusHeight - 40)];
    [self.view addSubview:self.proView];
    [self.proView release];
    
    // 给a设置初值
    self.a = 0;
    
    // 添加一个导航条

    // 标题
    self.navigationItem.title = @"产品详情";
    self.navigationController.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName:[UIColor whiteColor] , NSFontAttributeName:[UIFont systemFontOfSize:20]};
    // 导航条控件的颜色
    self.navigationController.navigationBar.tintColor = [UIColor yellowColor];
    // 修改整个导航条的颜色
    self.navigationController.navigationBar.barTintColor = kNavColor;
    // 右边的Button
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"收藏空"] style:UIBarButtonItemStylePlain target:self action:@selector(rightAction:)];

    // 在nav下面创建一个ScrollView
    self.navBelowView = [[NaBelowView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 40)];
    [self.view addSubview:self.navBelowView];
    [self.navBelowView release];
    
    // 综述，报价，测评三个Button的点击事件
    [self.navBelowView.summarizeButton addTarget:self action:@selector(ButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.navBelowView.priceButton addTarget:self action:@selector(ButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.navBelowView.testButton addTarget:self action:@selector(ButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    
    // ProView的ScrollView的代理
    self.proView.myScrollView.delegate = self;
}

#pragma mark - 综述，报价，测评点击事件
- (void)ButtonAction:(UIButton *)sender
{
    // 小滑块以及偏移效果
    [self ViewSAnimation:(sender.tag - 100)];
}

#pragma mark - 小滑块的动画效果以及偏移效果
- (void)ViewSAnimation:(NSInteger)num;
{
    // 开始动画
    [UIView beginAnimations:@"Maple" context:nil];
    // 设置动画时间
    [UIView setAnimationDuration:0.2];
    // 设置动画效果
    if (num == 1) {
        self.navBelowView.viewS.center = CGPointMake(self.view.frame.size.width / 6, 35);
    } else if (num == 2) {
        self.navBelowView.viewS.center = CGPointMake(self.view.frame.size.width / 2, 35);
    } else {
        self.navBelowView.viewS.center = CGPointMake(self.view.frame.size.width / 6 * 5, 35);
    }
    // 动画结束
    [UIView commitAnimations];
    
    // 偏移量的设定
    self.proView.myScrollView.contentOffset = CGPointMake((num - 1) * self.view.frame.size.width , 0);
}

#pragma mark - ScrollView的代理事件
// 滑动结束，根据偏移量
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    // 根据偏移量，使上面滑块移动
    [self ViewSAnimation:(self.proView.myScrollView.contentOffset.x / self.proView.myScrollView.frame.size.width) + 1];
}

#pragma mark - rightAction收藏键点击事件
- (void)rightAction:(UIBarButtonItem *)sender
{
    
    self.a++;
    if (self.a % 2 == 0) {
        self.navigationItem.rightBarButtonItem.image = [UIImage imageNamed:@"收藏空"];
        NSLog(@"收藏功能待完成");
    } else {
        self.navigationItem.rightBarButtonItem.image = [UIImage imageNamed:@"已收藏"];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc
{
    [super dealloc];
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
