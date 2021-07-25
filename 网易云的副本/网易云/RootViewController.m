//
//  RootViewController.m
//  网易云
//
//  Created by haoqianbiao on 2021/7/21.
//  Copyright © 2021 haoqianbiao. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationController.navigationBar.barStyle = UIBarStyleBlackTranslucent;
    
    UIBarButtonItem* buttonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"/Users/haoqianbiao/Desktop/test1/UI/网易云/网易云音乐/yunpan.png"] style:UIBarButtonItemStylePlain target:self action:@selector(press)];
    
    self.navigationItem.leftBarButtonItem = buttonItem;
    
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    
}

-(void) press {
    
}

@end
