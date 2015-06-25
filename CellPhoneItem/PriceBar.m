//
//  PriceBar.m
//  CellPhoneItem3
//
//  Created by lanouhn on 15/6/23.
//  Copyright (c) 2015年 lanou3g.com. All rights reserved.
//

#import "PriceBar.h"

@implementation PriceBar

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style
{
    self = [super initWithFrame:frame style:style];
    if (self) {
        [self addSubviews];
    }
    return self;
}

- (void)addSubviews
{
    self.backgroundColor = [UIColor redColor];
}

@end
