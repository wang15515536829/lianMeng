//
//  ParamArr.m
//  CellPhoneItem
//
//  Created by lanouhn on 15/6/25.
//  Copyright (c) 2015年 MapleStory. All rights reserved.
//

#import "ParamArr.h"

@implementation ParamArr

- (instancetype)initWithDictionary:(NSDictionary *)dic
{
    self = [super init];
    if (self) {
        if (![dic isKindOfClass:[NSNull class]]) {
        self.name = [dic objectForKey:@"name"];
        self.value = [dic objectForKey:@"value"];
        }
    }
    return self;
}

@end
