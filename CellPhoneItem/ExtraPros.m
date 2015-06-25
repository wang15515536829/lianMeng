//
//  ExtraPros.m
//  CellPhoneItem
//
//  Created by lanouhn on 15/6/25.
//  Copyright (c) 2015年 MapleStory. All rights reserved.
//

#import "ExtraPros.h"

@implementation ExtraPros

- (instancetype)initWithDictionary:(NSDictionary *)dic
{
    self = [super init];
    if (self) {
        if (![dic isKindOfClass:[NSNull class]]) {
        self.name = [dic valueForKey:@"name"];
        self.brief = [dic valueForKey:@"brief"];
        // 将值给
        for (NSDictionary *dicK in [dic objectForKey:@"extraPrice"]) {
            ExtraPrice *extPrice = [[ExtraPrice alloc] initWithDictionary:dicK];
            [self.arrExitra addObject:extPrice];
        }
      }
    }
    return self;
}

@end
