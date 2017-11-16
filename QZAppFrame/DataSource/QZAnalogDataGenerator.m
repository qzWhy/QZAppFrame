//
//  QZAnalogDataGenerator.m
//  QZAppFrame
//
//  Created by 000 on 17/11/16.
//  Copyright © 2017年 faner. All rights reserved.
//

#import "QZAnalogDataGenerator.h"

static NSArray *namesArray;
static NSArray *iconNamesArray;
static NSArray *messagesArray;

@implementation QZAnalogDataGenerator

+ (NSString *)randomName
{
    int randomIndex = arc4random_uniform((int)[self names].count);
    return [self names][randomIndex];
}
+ (NSString *)randomIconImageName
{
    int randomIndex = arc4random_uniform((int)[self ])
}

+ (NSArray *)names
{
    if (!namesArray) {
        namesArray = @[@"二龙湖浩哥",
                       @"微风",
                       @"夜在哭泣",
                       @"GSD_iOS",
                       @"hello world",
                       @"大脸猫",
                       @"你似不似傻",
                       @"天天向上",
                       @"不爱掏粪男孩",
                       @"最爱欧巴",
                       @"大长腿思密达",
                       @"别给我晒脸",
                       @"可爱男孩",
                       @"筷子姐妹",
                       @"法海你不懂爱",
                       @"长城长",
                       @"老北京麻辣烫",
                       @"我不搞笑",
                       @"原来我不帅",
                       @"亲亲我的宝贝",
                       @"请叫我吴彦祖",
                       @"帅锅莱昂纳多",
                       @"星星之火",
                       @"雅蠛蝶~雅蠛蝶"
                       ];
    }
    return namesArray;
}

+ (NSArray *)iconNames
{
    if (!iconNamesArray) {
        NSMutableArray *temp = [NSMutableArray new];
    }
}

@end
