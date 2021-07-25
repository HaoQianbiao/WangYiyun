//
//  FindViewController.m
//  网易云
//
//  Created by haoqianbiao on 2021/7/21.
//  Copyright © 2021 haoqianbiao. All rights reserved.
//

#import "FindViewController.h"

@interface FindViewController ()

@end

@implementation FindViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    _scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(10, 90, 390, 225)];
    _scrollView.contentSize = CGSizeMake(390 * 5, 225);
    [_scrollView setContentOffset:CGPointMake(0, 0)];
    _scrollView.userInteractionEnabled = YES;
    _scrollView.pagingEnabled = YES;
    _scrollView.delegate = self;
    _scrollView.scrollEnabled = YES;
    _scrollView.bounces = YES;
    _scrollView.alwaysBounceVertical = NO;
    _scrollView.alwaysBounceHorizontal = NO;
    _scrollView.showsHorizontalScrollIndicator = NO;
    
    for (int i = 0; i < 4; i++) {
        UIImageView* imageView = [[UIImageView alloc] initWithFrame:CGRectMake(390 * i, 0, 390, 225)];
        NSString* strImage = [[NSString alloc] initWithFormat:@"/Users/haoqianbiao/Desktop/test1/UI/网易云/网易云音乐/find%d.jpg",i];
        imageView.image = [UIImage imageNamed:strImage];
        [_scrollView addSubview:imageView];
    }
    UIImageView* imageViewLast = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"/Users/haoqianbiao/Desktop/网易云音乐/find0.jpg"]];
    imageViewLast.frame = CGRectMake(390 * 4, 0, 390, 225);
    [_scrollView addSubview:imageViewLast];
    
    [self.view addSubview:_scrollView];
    
    [self timeGo];
    
}


-(void) timeGo
{
    _myTimer = [NSTimer timerWithTimeInterval:2 target:self selector:@selector(turnPage) userInfo:nil repeats:YES];
    [[NSRunLoop mainRunLoop] addTimer:_myTimer forMode:NSDefaultRunLoopMode];
}

-(void) turnPage {
    CGFloat current = self.scrollView.contentOffset.x;
    
    if (current < 390 * 4) {
         [_scrollView scrollRectToVisible:CGRectMake(current + 390, 0, 390, 225) animated:YES];
    } else {
        [_scrollView scrollRectToVisible:CGRectMake(0, 0, 390, 225) animated:NO];
    }
}


@end

    
