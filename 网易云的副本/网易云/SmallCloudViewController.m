//
//  SmallCloudViewController.m
//  网易云
//
//  Created by haoqianbiao on 2021/7/21.
//  Copyright © 2021 haoqianbiao. All rights reserved.
//

#import "SmallCloudViewController.h"

@interface SmallCloudViewController ()

@end

@implementation SmallCloudViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"我的音乐云盘";
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont boldSystemFontOfSize:18],NSForegroundColorAttributeName:[UIColor blackColor]}];

    UIImageView* imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 100, self.view.bounds.size.width, self.view.bounds.size.height)];
    imageView.image = [UIImage imageNamed:@"/Users/haoqianbiao/Desktop/test1/UI/网易云/网易云音乐/云盘背景.png"];
    [self.view insertSubview:imageView atIndex:0];
    
    UIImageView* imageViewOne = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"/Users/haoqianbiao/Desktop/test1/UI/网易云/网易云音乐/guanyu.png"]];
    
    UIBarButtonItem* rightButton = [[UIBarButtonItem alloc] initWithCustomView:imageViewOne];
    self.navigationItem.rightBarButtonItem = rightButton;
    
}


@end
