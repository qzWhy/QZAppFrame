//
//  QZTabBarController.m
//  QZAppFrame
//
//  Created by 000 on 17/11/16.
//  Copyright © 2017年 faner. All rights reserved.
//

#import "QZTabBarController.h"
#import "QZNavgationController.h"

#import "QZChatViewController.h"
#import "QZDiscoverTableViewController.h"

@interface QZTabBarController ()

@end

@implementation QZTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    QZChatViewController *chat = [[QZChatViewController alloc] init];
    [self addChildVC:chat title:@"微信" image:@"" selectedImg:@""];
    QZDiscoverTableViewController *dis = [[QZDiscoverTableViewController alloc] init];
    [self addChildVC:dis title:@"发现" image:@"" selectedImg:@""];
    
    
    
}

- (void)addChildVC:(UIViewController *)childC title:(NSString *)title image:(NSString *)image selectedImg:(NSString *)selectedImg
{
    childC.title = title;//同时设置tabbar和navgationbar的文字
    
    //设置自控制器的图片
    childC.tabBarItem.image = [UIImage imageNamed:image];
    childC.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImg] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    //设置导航控制器
    QZNavgationController *nav = [[QZNavgationController alloc] initWithRootViewController:childC];
    
    //添加为子控制器
    [self addChildViewController:nav];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
