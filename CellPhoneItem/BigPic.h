//
//  BigPic.h
//  CellPhoneItem
//
//  Created by lanouhn on 15/6/25.
//  Copyright (c) 2015年 MapleStory. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BigPic : UITableViewCell

@property (nonatomic , retain) UIImageView *imageViewK;
@property (nonatomic , retain) UILabel *labelK;


// 用来计算cell的高度
- (void)calculateHeight;

@end
