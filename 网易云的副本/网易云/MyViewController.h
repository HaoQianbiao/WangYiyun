//
//  myViewController.h
//  网易云
//
//  Created by haoqianbiao on 2021/7/20.
//  Copyright © 2021 haoqianbiao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "imageShowViewController.h"

@interface MyViewController : UIViewController<imageShowViewControllerDelegate>
@property (nonatomic, strong) UIButton* buttonPortrait;
@property (nonatomic, strong) UIScrollView* scrollView;
@property (nonatomic, strong) UIScrollView* scrollViewOne;
@property (nonatomic, strong) UIScrollView* scrollViewTwo;
@property (nonatomic, strong) UIView* viewOne;
@property (nonatomic, strong) UIView* viewTwo;
@property (nonatomic, strong) UIView* viewSongSheetOne;
@property (nonatomic, strong) UIView* viewSongSheetTwo;
-(void) uploadAvatar:(NSString*) str;
@end
