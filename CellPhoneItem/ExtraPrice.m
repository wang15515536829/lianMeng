//
//  ExtraPrice.m
//  CellPhoneItem
//
//  Created by lanouhn on 15/6/25.
//  Copyright (c) 2015年 MapleStory. All rights reserved.
//

#import "ExtraPrice.h"

@implementation ExtraPrice

- (instancetype)initWithDictionary:(NSDictionary *)dic
{
    self = [super init];
    if (self) {
        if (![dic isKindOfClass:[NSNull class]]) {
        self.name =  [dic valueForKey:@"name"];
        self.price = [dic valueForKey:@"price"];
        }
    }
    return self;
}

@end
