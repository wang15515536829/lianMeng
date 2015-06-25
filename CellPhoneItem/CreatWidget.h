//
//  CreatWidget.h
//  CellPhoneItem
//
//  Created by lanouhn on 15/6/25.
//  Copyright (c) 2015年 MapleStory. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CreatWidget : UIView

// 创建一个UIView
+ (UIView *)creatViewWithFrame:(CGRect)frame color:(UIColor *)color;

// 创建一个UILabel
+ (UILabel *)creatLabelWithFrame:(CGRect)frame text:(NSString *)text textColor:(UIColor *)textColor font:(CGFloat)font;

// 创建一个UIImageView
+ (UIImageView *)creatImageViewWithFrame:(CGRect)frame image:(UIImage *)image;

// 创建一个Button
+ (UIButton *)creatButtonWithFrame:(CGRect)frame title:(NSString *)title;

@end
