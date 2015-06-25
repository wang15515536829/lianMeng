//
//  CreatWidget.m
//  CellPhoneItem
//
//  Created by lanouhn on 15/6/25.
//  Copyright (c) 2015年 MapleStory. All rights reserved.
//

#import "CreatWidget.h"

@implementation CreatWidget

// 创建一个UIView
+ (UIView *)creatViewWithFrame:(CGRect)frame color:(UIColor *)color
{
    UIView *view = [[UIView alloc] initWithFrame:frame];
    view.backgroundColor = color;
    return [view autorelease];
}

// 创建一个UILabel
+ (UILabel *)creatLabelWithFrame:(CGRect)frame text:(NSString *)text textColor:(UIColor *)textColor font:(CGFloat)font
{
    UILabel *label = [[UILabel alloc] initWithFrame:frame];
    label.text = text;
    label.textColor = textColor;
    label.font = [UIFont systemFontOfSize:font];
    return [label autorelease];
}

// 创建一个UIImageView
+ (UIImageView *)creatImageViewWithFrame:(CGRect)frame image:(UIImage *)image
{
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:frame];
    imageView.image = image;
    return [imageView autorelease];
}

// 创建一个Button
+ (UIButton *)creatButtonWithFrame:(CGRect)frame title:(NSString *)title
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = frame;
    [button setTitle:title forState:UIControlStateNormal];
    return button;
}

@end







