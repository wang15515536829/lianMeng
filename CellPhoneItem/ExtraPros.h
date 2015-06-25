//
//  ExtraPros.h
//  CellPhoneItem
//
//  Created by lanouhn on 15/6/25.
//  Copyright (c) 2015年 MapleStory. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ExtraPrice.h"

@interface ExtraPros : NSObject

@property (nonatomic , retain) NSString *name;
@property (nonatomic , retain) NSString *brief;
@property (nonatomic , retain) NSMutableArray *arrExitra;

- (instancetype)initWithDictionary:(NSDictionary *)dic;

@end

