//
//  ProductDetailModel.m
//  CellPhoneItem
//
//  Created by lanouhn on 15/6/25.
//  Copyright (c) 2015年 MapleStory. All rights reserved.
//

#import "ProductDetailModel.h"

@implementation ProductDetailModel

- (instancetype)initWithDictionary:(NSDictionary *)dic
{
    self = [super init];
    if (self) {
        self.name = [dic objectForKey:@"name"];
        self.brief = [dic objectForKey:@"brief"];
        self.priceRange = [dic objectForKey:@"priceRange"];
    }
    return self;
}

@end

 