//
//  IntroCell.m
//  CellPhoneItem
//
//  Created by lanouhn on 15/6/25.
//  Copyright (c) 2015年 MapleStory. All rights reserved.
//

#import "IntroCell.h"

@implementation IntroCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self addSubviews];
    }
    
    return self;
}

- (void)addSubviews
{
    self.backgroundColor = [UIColor whiteColor];
    
    // 添加一个nameL
    self.nameL = [CreatWidget creatLabelWithFrame:CGRectMake(0, 0, self.frame.size.width, 40) text:@"K" textColor:[UIColor blueColor] font:17];
    [self addSubview:self.nameL];
    
    // 添加一个briefL
    self.briefL = [CreatWidget creatLabelWithFrame:CGRectMake(0, self.nameL.frame.size.height , self.frame.size.width , 60) text:@"查看更多图片" textColor:[UIColor blackColor] font:17];
    [self addSubview:self.briefL];
    
    // 添加一个priceL
    self.priceL = [CreatWidget creatLabelWithFrame:CGRectMake(0, self.briefL.frame.origin.y + self.briefL.frame.size.height, self.briefL.frame.size.width, 40) text:@"￥" textColor:[UIColor redColor] font:17];
    
}

#pragma mark - cell的自适应高度
// 用来计算cell的高度
- (void)calculateHeight
{
    // 使用Function功能类计算得到label的高度
    self.briefL.frame = CGRectMake(0, self.briefL.frame.size.height, self.frame.size.width, [Function functionCalculateCellHeightWihLabel:self.briefL]);
    
}

- (void)dealloc
{
    [_nameL release];
    [_briefL release];
    [_priceL release];
    [super dealloc];
}



- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
