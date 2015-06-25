//
//  Function.h
//  CellPhoneItem
//
//  Created by lanouhn on 15/6/25.
//  Copyright (c) 2015年 MapleStory. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Function : NSObject

// 计算得到变化后label的高度
+ (CGFloat)functionCalculateCellHeightWihLabel:(UILabel *)label;

// 计算得到变化后imageView的高度
+ (CGFloat)functionCalculateCellHeightWihimageView:(UIImageView *)imageView width:(CGFloat)width;

@end
