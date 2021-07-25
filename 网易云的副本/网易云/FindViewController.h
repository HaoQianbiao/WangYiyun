//
//  FindViewController.h
//  网易云
//
//  Created by haoqianbiao on 2021/7/21.
//  Copyright © 2021 haoqianbiao. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FindViewController : UIViewController
<UIScrollViewDelegate>
{
    int _currentImageIndex;
    int _imageCount;
}
@property (nonatomic, strong) UIScrollView* scrollView;
@property (nonatomic, strong) NSTimer* myTimer;
@property (nonatomic, strong) NSMutableArray* imageArray;
@property (nonatomic, strong) UIImageView *_leftImageView;
@property (nonatomic, strong) UIImageView *_centerImageView;
@property (nonatomic, strong) UIImageView *_rightImageView;
@property (nonatomic, strong) UIPageControl *_pageControl;

@end

NS_ASSUME_NONNULL_END
