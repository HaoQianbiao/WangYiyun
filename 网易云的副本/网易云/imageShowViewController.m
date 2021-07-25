//
//  imageShowViewController.m
//  网易云
//
//  Created by haoqianbiao on 2021/7/23.
//  Copyright © 2021 haoqianbiao. All rights reserved.
//

#import "imageShowViewController.h"
#import "MyViewController.h"
@interface imageShowViewController ()

@end

@implementation imageShowViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
//    self.navigationController.navigationBar.barTintColor = [UIColor blueColor];
    self.navigationController.navigationBar.translucent = NO;
    self.view.backgroundColor = [UIColor whiteColor];
    UILabel* label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 85, 30)];
    label.backgroundColor = [UIColor grayColor];
    label.text = @" 最近照片▽";
    label.textColor = [UIColor whiteColor];
    label.font = [UIFont systemFontOfSize:15];
    label.layer.borderWidth = 1;
    [label.layer setMasksToBounds:YES];
    [label.layer setCornerRadius:10];
    self.navigationItem.titleView = label;
    
    UIBarButtonItem* rightButton = [[UIBarButtonItem alloc] initWithTitle:@"完成" style:UIBarButtonItemStylePlain target:self action:@selector(finish)];
    self.navigationItem.rightBarButtonItem = rightButton;
    
    _scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
    _scrollView.contentSize = CGSizeMake(self.view.bounds.size.width, self.view.bounds.size.height * 2);
    _scrollView.userInteractionEnabled = YES;
    
    for (int i = 0; i < 6; i++) {
        for (int j = 0; j < 3; j++) {
            NSString* str = [[NSString alloc] initWithFormat:@"/Users/haoqianbiao/Desktop/网易云音乐/头像/%d_%d.jpeg", i + 1, j + 1 ];
            UIImage* image = [UIImage imageNamed:str];
            _button = [[UIButton alloc] initWithFrame:CGRectMake(j * 140 + 10, i * 140 + 10, 120, 120)];
            [_button setImage:image forState:UIControlStateNormal];
            _button.tag = 101 + j + 3 * i;
            [_button addTarget:self action:@selector(press:) forControlEvents:UIControlEventTouchUpInside];
            [_scrollView addSubview:_button];
        }
    }
    _imageTag = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
    [_imageTag setImage:[UIImage imageNamed:@"/Users/haoqianbiao/Desktop/test1/UI/网易云/网易云音乐/duigou1.png"]];
    
    [self.view addSubview:_scrollView];
    
}

-(void) finish {
    [_delegate uploadAvatar:_strButton];
}

-(void) press:(UIButton*)buttonLoad {
    if (buttonLoad.selected == YES) {
        buttonLoad.selected = NO;
        [buttonLoad addSubview:_imageTag];
        _strButton = [[NSString alloc] initWithFormat:@"/Users/haoqianbiao/Desktop/网易云音乐/头像/%ld_%ld.jpeg", (buttonLoad.tag - 101) / 3 + 1, (buttonLoad.tag - 101) % 3 + 1];
    } else {
        buttonLoad.selected = YES;
    }
}

@end
