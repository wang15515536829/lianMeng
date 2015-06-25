//
//  BigPic.m
//  CellPhoneItem
//
//  Created by lanouhn on 15/6/25.
//  Copyright (c) 2015年 MapleStory. All rights reserved.
//

#import "BigPic.h"

#define kInspace 15

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
    self.imageViewK = [CreatWidget creatImageViewWithFrame:CGRectMake(0, 0, self.frame.size.width, 170) image:[UIImage imageNamed:@"已收藏"]];
    self.imageViewK.backgroundColor = [UIColor redColor];
    [self addSubview:self.imageViewK];
    
    // 添加一个label
    self.labelK = [CreatWidget creatLabelWithFrame:CGRectMake(0, self.imageViewK.frame.size.height, self.frame.size.width, 30) text:@"查看更多图片" textColor:[UIColor orangeColor] font:17];
    self.labelK.textAlignment = NSTextAlignmentCenter;
    [self addSubview:self.labelK];
    
    // 添加一个nameL
    self.nameL = [CreatWidget creatLabelWithFrame:CGRectMake(kInspace, self.labelK.frame.origin.y + self.labelK.frame.size.height + kInspace, self.frame.size.width - 2 * kInspace , 40) text:@"K" textColor:[UIColor blueColor] font:17];
    [self addSubview:self.nameL];
    
    // 添加一个briefL
    self.briefL = [CreatWidget creatLabelWithFrame:CGRectMake(kInspace, self.nameL.frame.origin.y + self.nameL.frame.size.height , self.frame.size.width  - 2 * kInspace , 60) text:@"机型" textColor:[UIColor blackColor] font:15];
    [self addSubview:self.briefL];
    
    // 添加一个priceL
    self.priceL = [CreatWidget creatLabelWithFrame:CGRectMake(kInspace, self.briefL.frame.origin.y + self.briefL.frame.size.height, self.briefL.frame.size.width - 2 * kInspace, 40) text:@"￥" textColor:[UIColor redColor] font:17];
    [self addSubview:self.priceL];
}

#pragma mark - cell的自适应高度
// 用来计算cell的高度
- (CGFloat)calculateHeight
{
    // 使用Function功能类计算得到imageView的高度
    self.imageViewK.frame = CGRectMake(0, 0, self.frame.size.width, [Function functionCalculateCellHeightWihimageView:self.imageViewK width:self.frame.size.width]);
    
    // labelK的高度
    self.labelK.frame = CGRectMake(0, self.imageViewK.frame.size.height, self.frame.size.width, 30);
    
    // nameL的高度
    self.nameL.frame = CGRectMake(kInspace, self.labelK.frame.origin.y + self.labelK.frame.size.height, self.frame.size.width - 2 * kInspace, 40);
    
    // 使用Function功能类计算得到breifL的高度
    self.briefL.frame = CGRectMake(kInspace, self.nameL.frame.origin.y + self.nameL.frame.size.height, self.frame.size.width - 2 * kInspace, [Function functionCalculateCellHeightWihLabel:self.briefL]);
    
    // priceL的高度
    self.priceL.frame = CGRectMake(kInspace, self.briefL.frame.origin.y + self.briefL.frame.size.height, self.briefL.frame.size.width - 2 * kInspace, 40);
   
    return (self.priceL.frame.origin.y + self.priceL.frame.size.height);
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
