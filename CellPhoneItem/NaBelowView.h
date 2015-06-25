//
//  NaBelowView.h
//  CellPhoneItem3
//
//  Created by lanouhn on 15/6/23.
//  Copyright (c) 2015年 lanou3g.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NaBelowView : UIScrollView

@property (nonatomic , retain) UIButton *summarizeButton;  // 综述Button
@property (nonatomic , retain) UIButton *priceButton;    // 报价Button
@property (nonatomic , retain) UIButton *testButton;     // 测评Button
@property (nonatomic , retain) UIScrollView *scrollS;    // 小滑动栏
@property (nonatomic , retain) UIView *viewS;             // 小滑动栏上的滑块View

@end
