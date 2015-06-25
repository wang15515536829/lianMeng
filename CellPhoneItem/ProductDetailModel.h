//
//  ProductDetailModel.h
//  CellPhoneItem
//
//  Created by lanouhn on 15/6/25.
//  Copyright (c) 2015年 MapleStory. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ParamArr.h"
#import "ExtraPros.h"

@interface ProductDetailModel : NSObject

@property (nonatomic , retain) NSString *pic;    // 图片url
@property (nonatomic , retain) NSString *name;   // 手机名称
@property (nonatomic , retain) NSString *brief;  // 正文
@property (nonatomic , retain) NSString *priceRange; // 手机价格

- (instancetype)initWithDictionary:(NSDictionary *)dic;

@end

/*
{
    "seriesInfo": {
        "id": "19062",
        "mainId": "400842",
        "subcateId": "57",
        "name": "魅族魅蓝Note 2",
        "brief": "2015年6月2号魅族 魅蓝Note 2发布，该机重新调整了机身背部曲线的魅蓝Note2侧面更圆润、手感更扎实，机身厚度比前代薄了0.2mm。另外一个改变则是小圆圈Home键被实体按键所代替，并集成触控功能",
        "pic": "http://2b.zol-img.com.cn/product/153_640x480/41/ceTQQTxrxx0gQ.jpg",
        "priceRange": "799",
        "sellNum": "",
        "picNum": "466",
        "seriesProNum": "4",
        "reviewComm": 3.4,
        "saleNum": 1,
        "secHand": 0,
        "merchantNum": 250
    },
    "b2cInfo": [
                {
                    "cnName": "Z团",
                    "icon": "http://icon.zol-img.com.cn/app/images/ztuan.png",
                    "name": "首发疯抢 手慢无！魅族 魅蓝Note 2（双4G）仅988元 顺丰包邮",
                    "price": "￥988.0",
                    "url": "http://m.zol.com/tuan/20122.html",
                    "config": 2,
                    "buyText": "",
                    "intro": "ZOL团购，正品更省钱！",
                    "linkText": "立即参团",
                    "salerName": "ztuan"
                }
                ],
    "paramArr": [
                 {
                     "name": "4G网络",
                     "value": "移动TD-LTE，联通TD-LTE，联通FDD-LTE "
                 },
                 {
                     "name": "网络类型",
                     "value": "双卡，双4G "
                 },
                 {
                     "name": "主屏尺寸",
                     "value": "5.5英寸  1920x1080像素"
                 },
                 {
                     "name": "CPU型号",
                     "value": "联发科 MT6753 "
                 },
                 {
                     "name": "CPU频率",
                     "value": "1.3GHz  真八核"
                 }
                 ],
    "extraPros": [
                  {
                      "name": "魅族 魅蓝Note 2（移动4G）",
                      "proId": "402124",
                      "reviewNum": "186",
                      "brief": "移动4G网络，向下兼容移动3G网络",
                      "extraPrice": [
                                     {
                                         "extraId": "9339",
                                         "proId": "402124",
                                         "priceName": "16GB厂商指导价",
                                         "reviewNum": "186",
                                         "isStop": "0",
                                         "price": "799",
                                         "mark": "￥",
                                         "name": "16GB厂商指导价"
                                     },
                                     {
                                         "extraId": "9340",
                                         "proId": "402124",
                                         "priceName": "32GB厂商指导价",
                                         "reviewNum": "186",
                                         "isStop": "0",
                                         "price": "999",
                                         "mark": "￥",
                                         "name": "32GB厂商指导价"
                                     }
                                     ]
                  },
                  {
                      "name": "魅族 魅蓝Note 2（联通4G）",
                      "proId": "402123",
                      "reviewNum": "186",
                      "brief": "联通4G网络，向下兼容联通3G网络",
                      "extraPrice": [
                                     {
                                         "extraId": "9342",
                                         "proId": "402123",
                                         "priceName": "32GB厂商指导价",
                                         "reviewNum": "186",
                                         "isStop": "0",
                                         "price": "999",
                                         "mark": "￥",
                                         "name": "32GB厂商指导价"
                                     },
                                     {
                                         "extraId": "9341",
                                         "proId": "402123",
                                         "priceName": "16GB厂商指导价",
                                         "reviewNum": "186",
                                         "isStop": "0",
                                         "price": "799",
                                         "mark": "￥",
                                         "name": "16GB厂商指导价"
                                     }
                                     ]
                  },
                  {
                      "name": "魅族 魅蓝Note 2（电信4G）",
                      "proId": "402121",
                      "reviewNum": "186",
                      "brief": "电信4G网络，向下兼容电信3G网络",
                      "extraPrice": [
                                     {
                                         "extraId": "9336",
                                         "proId": "402121",
                                         "priceName": "16GB厂商指导价",
                                         "reviewNum": "186",
                                         "isStop": "0",
                                         "price": "799",
                                         "mark": "￥",
                                         "name": "16GB厂商指导价"
                                     }
                                     ]
                  },
                  {
                      "name": "魅族 魅蓝Note 2（双4G）",
                      "proId": "400842",
                      "reviewNum": "186",
                      "brief": "移动/联通双4G网络，向下兼容移动/联通双3G网络",
                      "extraPrice": [
                                     {
                                         "extraId": "9130",
                                         "proId": "400842",
                                         "priceName": "16GB厂商指导价",
                                         "reviewNum": "186",
                                         "isStop": "0",
                                         "price": "799",
                                         "mark": "￥",
                                         "name": "16GB厂商指导价"
                                     },
                                     {
                                         "extraId": "9332",
                                         "proId": "400842",
                                         "priceName": "32GB厂商指导价",
                                         "reviewNum": "186",
                                         "isStop": "0",
                                         "price": "999",
                                         "mark": "￥",
                                         "name": "32GB厂商指导价"
                                     }
                                     ]
                  }
                  ]
}
*/
