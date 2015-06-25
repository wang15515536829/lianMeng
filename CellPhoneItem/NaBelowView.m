//
//  NaBelowView.m
//  CellPhoneItem3
//
//  Created by lanouhn on 15/6/23.
//  Copyright (c) 2015年 lanou3g.com. All rights reserved.
//

#import "NaBelowView.h"

// 三个button的间隔
#define kGap (self.frame.size.width - 150) / 4
#define kGapPar (self.frame.size.with / 5)

@implementation NaBelowView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubviews];
    }
    return self;
}

- (void)addSubviews
{

    self.backgroundColor = [UIColor colorWithRed:213.0/255.0 green:213.0/255.0 blue:213.0/255.0 alpha:1];
    self.contentSize = CGSizeMake(self.frame.size.width + 30, 0);
    
    // 综述button的创建
    self.summarizeButton = [UIButton buttonWithType:UIButtonTypeSystem];
    // 起始点是view的三分之一
    self.summarizeButton.tag = 101;
    self.summarizeButton.frame = CGRectMake(self.frame.size.width / 6 - 25, 7 , 50, 25);
    NSLog(@"%f" , self.frame.size.width);
    [self.summarizeButton setTitle:@"综述" forState:UIControlStateNormal];
    [self addSubview:self.summarizeButton];
    
    // 报价button的创建
    self.priceButton = [UIButton buttonWithType:UIButtonTypeSystem];
    // 起始点是view的三分之二
    self.priceButton.frame = CGRectMake(self.frame.size.width / 6 * 3 - 25, 7, 50, 25);
    [self.priceButton setTitle:@"报价" forState:UIControlStateNormal];
    self.priceButton.tag = 102;
    [self addSubview:self.priceButton];
    
    // 测评button的创建
    self.testButton = [UIButton buttonWithType:UIButtonTypeSystem];
    // 起始点是view的三分之二
    self.testButton.frame = CGRectMake(self.frame.size.width / 6 * 5 - 25, 7, 50, 25);
    [self.testButton setTitle:@"测评" forState:UIControlStateNormal];
    self.testButton.tag = 103;
    [self addSubview:self.testButton];
    
    // 创建小scrollView上面的小滑块
    self.viewS = [[UIView alloc] initWithFrame:CGRectMake(self.frame.size.width / 6 - 25, 35, 50, 2)];
    self.viewS.backgroundColor = [UIColor blueColor];
    [self addSubview:self.viewS];
    [self.viewS release];
    
}

- (void)dealloc
{
    [super dealloc];
}

@end






