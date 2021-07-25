//
//  imageShowViewController.h
//  网易云
//
//  Created by haoqianbiao on 2021/7/23.
//  Copyright © 2021 haoqianbiao. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol imageShowViewControllerDelegate <NSObject>

-(void) uploadAvatar:(NSString*) str;

@end

@interface imageShowViewController : UIViewController
@property (nonatomic, strong) UIScrollView* scrollView;
@property (nonatomic, copy) NSString* strButton;
@property (nonatomic, strong) UIImageView* imageTag;
@property (nonatomic, strong) UIButton* button;
@property (assign, nonatomic) id<imageShowViewControllerDelegate>delegate;
@end


