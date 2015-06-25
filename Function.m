//
//  Function.m
//  CellPhoneItem
//
//  Created by lanouhn on 15/6/25.
//  Copyright (c) 2015年 MapleStory. All rights reserved.
//

#import "Function.h"

@implementation Function

// 计算得到变化后label的高度
+ (CGFloat)functionCalculateCellHeightWihLabel:(UILabel *)label;
{
    NSString *labelText = label.text;
    label.numberOfLines = 0;
    // 字符串自适应高度
    // 参数1：多宽换行，多少Hang    参数3，字体大小
    CGSize maxSize = CGSizeMake(label.frame.size.width, 100);
    
    CGRect textRect = [labelText boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:17]} context:nil];
    
    return textRect.size.height;
}

// 计算得到变化后imageView的高度
+ (CGFloat)functionCalculateCellHeightWihimageView:(UIImageView *)imageView width:(CGFloat)width;
{
    // 拿到contentImageView的图片
    UIImage *image = imageView.image;
    CGSize imageSize = image.size;
    // 如果image.size太大，把他压缩
    if (imageSize.width > imageView.superview.frame.size.width) {
        UIImage *newImage = [Function zoomImageScale:image width:width];   // 压缩图片的方法
        imageSize = newImage.size;
    }
    
   return imageSize.height;
}

+ (UIImage *)zoomImageScale:(UIImage *)image width:(CGFloat)width
{
    // 先拿到原有图片的大小
    CGSize size = image.size;
    UIGraphicsBeginImageContext(CGSizeMake(width, width * size.height / size.width));
    
    [image drawInRect:CGRectMake(0, 0, width, width * size.height / size.width)];
    
    // 从当前的上下文拿图片
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return newImage;
}

@end





