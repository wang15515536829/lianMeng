//
//  BigPic.m
//  CellPhoneItem
//
//  Created by lanouhn on 15/6/25.
//  Copyright (c) 2015年 MapleStory. All rights reserved.
//

#import "BigPic.h"

@implementation BigPic

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
    
    // 添加一个ImageView
    self.imageViewK = [CreatWidget creatImageViewWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height - 40) image:nil];
    self.imageViewK.backgroundColor = [UIColor redColor];
    
    // 添加一个label
    self.labelK = [CreatWidget creatLabelWithFrame:CGRectMake(0, self.imageViewK.frame.size.height, self.frame.size.width, 30) text:@"查看更多图片" textColor:[UIColor orangeColor] font:20];
}

#pragma mark - cell的自适应高度
// 用来计算cell的高度
- (void)calculateHeight
{
    // 使用Function功能类计算得到imageView的高度
    self.imageViewK.frame = CGRectMake(0, 0, self.frame.size.width, [Function functionCalculateCellHeightWihimageView:self.imageViewK width:self.frame.size.width]);
    
    // 使用Function功能类计算得到label的高度
    self.labelK.frame = CGRectMake(0, self.imageViewK.frame.size.height, self.frame.size.width, [Function functionCalculateCellHeightWihLabel:self.labelK]);
    
}

- (void)dealloc
{
    [_labelK release];
    [_imageViewK release];
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
