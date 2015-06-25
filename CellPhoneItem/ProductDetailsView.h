//
//  ProductDetailsView.h
//  CellPhoneItem3
//
//  Created by lanouhn on 15/6/23.
//  Copyright (c) 2015年 lanou3g.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NetworkEngine.h"
#import "ProductDetailModel.h"
#import "ParamArr.h"
#import "ExtraPrice.h"
#import "ExtraPros.h"

@interface ProductDetailsView : UIView<NetworkEngineDelegate , UITableViewDataSource , UITableViewDelegate>

@property (nonatomic , retain) UITableView *tableView;
@property (nonatomic , retain) NSMutableArray *proDetailArr;    // 第一个model数组
@property (nonatomic , retain) NSMutableArray *paraArr;         // 第二个paraModel数组
@property (nonatomic , retain) NSMutableArray *extraProsArr;    // 第三个ExtraProsModel数组
@property (nonatomic , retain) NSMutableArray *AllModelArr;     // 总的Model数组
@property (nonatomic , retain) NSDictionary *dic;
@property (nonatomic , retain) UIScrollView *myScrollView;

@end
