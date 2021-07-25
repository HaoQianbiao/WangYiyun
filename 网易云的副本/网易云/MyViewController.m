//
//  myViewController.m
//  网易云
//
//  Created by haoqianbiao on 2021/7/20.
//  Copyright © 2021 haoqianbiao. All rights reserved.
//

#import "MyViewController.h"
#import "SmallCloudViewController.h"
#import "imageShowViewController.h"
@interface MyViewController ()

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view
    
    UIBarButtonItem* barButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"/Users/haoqianbiao/Desktop/test1/UI/网易云/网易云音乐/yunpan.png"] style:UIBarButtonItemStylePlain target:self action:@selector(pressNext)];
    
    self.navigationItem.leftBarButtonItem = barButtonItem;
    self.view.backgroundColor = [UIColor blackColor];
    self.navigationItem.leftBarButtonItem.tintColor = [UIColor whiteColor];
    [self.navigationController.navigationBar setBackgroundImage:[UIImage new]
                                                  forBarMetrics:UIBarMetricsDefault];
    self.navigationController.navigationBar.shadowImage = [UIImage new];
    self.navigationController.navigationBar.barStyle = UIBarStyleBlackOpaque;
 
   _scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
    _scrollView.pagingEnabled = NO;
    _scrollView.contentSize = CGSizeMake(self.view.bounds.size.width, 1100);
    _scrollView.contentOffset = CGPointMake(0, 0);
    _scrollView.showsHorizontalScrollIndicator = NO;
    _scrollView.backgroundColor = [UIColor blackColor];
    [self.view addSubview:_scrollView];
    
    _viewOne = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 200)];
    _viewOne.backgroundColor = [UIColor blackColor];
    [self.scrollView addSubview:_viewOne];
    
    _buttonPortrait = [UIButton buttonWithType:UIButtonTypeCustom];
    _buttonPortrait.frame = CGRectMake(20, 0, 80, 80);
    [_buttonPortrait setImage:[UIImage imageNamed:@"/Users/haoqianbiao/Desktop/网易云音乐/touxiang.png"] forState:UIControlStateNormal];
    _buttonPortrait.layer.borderWidth = 0;
    [_buttonPortrait.layer setMasksToBounds:YES];
    [_buttonPortrait.layer setCornerRadius:_buttonPortrait.frame.size.width/2];
    [_buttonPortrait addTarget:self action:@selector(press) forControlEvents:UIControlEventTouchUpInside];
    [self.viewOne addSubview:_buttonPortrait];
    NSArray* headArray = [[NSArray alloc] init];
    headArray = @[@"嘿小天亮", @"开通黑胶VIP >", @"黑胶VIP", @"Lv.7"];
    for (int i = 0; i < 2; i++) {
        UIButton* buttonName = [UIButton buttonWithType:UIButtonTypeCustom];
        buttonName.frame = CGRectMake(50 + 200 * i, 10, 200, 40);
        [buttonName setTitle:[headArray objectAtIndex:i] forState:UIControlStateNormal];
        buttonName.titleLabel.font = [UIFont systemFontOfSize:22 - 9 * i];
        [self.viewOne addSubview:buttonName];
    }
    for (int i = 0; i < 2; i++) {
        UIButton* buttonNameLabel = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        buttonNameLabel.frame = CGRectMake(100 + 60 * i, 50, 60 - i * 20, 20);
        [buttonNameLabel setTitle:[headArray objectAtIndex:i + 2] forState:UIControlStateNormal];
        buttonNameLabel.titleLabel.font = [UIFont systemFontOfSize:13];
        buttonNameLabel.backgroundColor = [UIColor grayColor];
        [buttonNameLabel setTintColor:[UIColor whiteColor] ];
        buttonNameLabel.layer.borderWidth = 1;
        [buttonNameLabel.layer setMasksToBounds:YES];
        [buttonNameLabel.layer setCornerRadius:10];
        [self.viewOne addSubview:buttonNameLabel];
    }
    
    NSArray* arrayViewOne = [[NSArray alloc] init];
    arrayViewOne = @[@"/Users/haoqianbiao/Desktop/test1/UI/网易云/网易云音乐/xiazai.png", @"/Users/haoqianbiao/Desktop/test1/UI/网易云/网易云音乐/yinyuediantai.png",@"/Users/haoqianbiao/Desktop/test1/UI/网易云/网易云音乐/shoucang.png",@"/Users/haoqianbiao/Desktop/test1/UI/网易云/网易云音乐/xinge.png"];
    
    NSArray* arrayViewOneName = [[NSArray alloc] init];
    arrayViewOneName = @[@"本地音乐", @"我的电台", @"我的收藏", @"关注新歌"];
    
    for (int i = 0; i < 4; i++) {
        UIButton* button = [[UIButton alloc] init];
        [button setImage:[UIImage imageNamed:[arrayViewOne objectAtIndex:i]] forState:UIControlStateNormal];
        button.frame = CGRectMake(50 + i * 100, 95, 40, 40);
        UILabel* label = [[UILabel alloc] initWithFrame:CGRectMake(40 + 100 * i, 140, 80, 15)];
        label.text = [arrayViewOneName objectAtIndex:i];
        label.font = [UIFont systemFontOfSize:15];
        label.textColor = [UIColor whiteColor];
        [self.viewOne addSubview:label];
        [self.viewOne addSubview:button];
    }
    
    
    _viewTwo = [[UIView alloc] initWithFrame:CGRectMake(0, 185, self.view.bounds.size.width, 1200)];
    _viewTwo.backgroundColor = [UIColor whiteColor];
    _viewTwo.layer.borderWidth = 1;
    [_viewTwo.layer setCornerRadius:20];
    [_scrollView addSubview:_viewTwo];
    
    
    
    UILabel* labelMyMusic = [[UILabel alloc] initWithFrame:CGRectMake(13, 15, 150, 30)];
    labelMyMusic.text = @"我的音乐";
    labelMyMusic.font = [UIFont systemFontOfSize:20];
    UIButton* buttonCar = [[UIButton alloc] initWithFrame:CGRectMake(330, 15, 30, 30)];
    [buttonCar setImage:[UIImage imageNamed:@"/Users/haoqianbiao/Desktop/test1/UI/网易云/网易云音乐/tubiao74-3.png"] forState:UIControlStateNormal];
    UIButton* buttonJiantou = [[UIButton alloc] initWithFrame:CGRectMake(360, 15, 40, 20)];
    [buttonJiantou setTitle:@">" forState:UIControlStateNormal];
    buttonJiantou.titleLabel.font = [UIFont systemFontOfSize:25];
    [buttonJiantou setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [_viewTwo addSubview:labelMyMusic];
    [_viewTwo addSubview:buttonCar];
    [_viewTwo addSubview:buttonJiantou];
    
    NSArray* arrayMyMusic = [[NSArray alloc] init];
    arrayMyMusic = @[@"我喜欢的音乐", @"私人FM", @"云贝听歌",@"热歌排行榜", @"每日一听", @"专属歌单"];
    
    _scrollViewOne = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 50, self.view.bounds.size.width, 200)];
    _scrollViewOne.pagingEnabled = NO;
    _scrollViewOne.contentSize = CGSizeMake(170 * 5, 200);
    _scrollViewOne.contentOffset = CGPointMake(0, 0);
    _scrollViewOne.showsHorizontalScrollIndicator = NO;
    _scrollViewOne.userInteractionEnabled = YES;
    _scrollViewOne.backgroundColor = [UIColor whiteColor];
    [_viewTwo addSubview:_scrollViewOne];

    
    for (int i = 0; i < 6; i++) {
        UIView* view = [[UIView alloc] initWithFrame:CGRectMake(10 + 140 * i, 0, 140, 200)];
        UIButton* buttonMyMusic = [[UIButton alloc] initWithFrame:CGRectMake(0, 20, 125, 180)];
        NSString* str = [[NSString alloc] initWithFormat:@"/Users/haoqianbiao/Desktop/网易云音乐/music%d.jpg",i];
        [buttonMyMusic setImage:[UIImage imageNamed:str] forState:UIControlStateNormal];
        buttonMyMusic.layer.borderWidth = 0;
        [buttonMyMusic.layer setMasksToBounds:YES];
        [buttonMyMusic.layer setCornerRadius:10];
        UIButton* buttonMyMusicOne = [[UIButton alloc] initWithFrame:CGRectMake(48, 85, 30, 30)];
        NSString* strOne = [[NSString alloc] initWithFormat:@"/Users/haoqianbiao/Desktop/网易云音乐/%d.png",i];
        [buttonMyMusicOne setImage:[UIImage imageNamed:strOne] forState:UIControlStateNormal];
        UILabel* labelMyMusic = [[UILabel alloc] initWithFrame:CGRectMake(0, 120, 130, 30)];
        labelMyMusic.text = [arrayMyMusic objectAtIndex:i];
        labelMyMusic.font = [UIFont systemFontOfSize:17];
        labelMyMusic.textColor = [UIColor whiteColor];
        labelMyMusic.textAlignment = NSTextAlignmentCenter;
        [view addSubview:buttonMyMusic];
        [view addSubview:buttonMyMusicOne];
        [view addSubview:labelMyMusic];
        if (i == 0) {
            UILabel* labelMyMusicOne = [[UILabel alloc] initWithFrame:CGRectMake(13, 160, 100, 30)];
            labelMyMusicOne.text = @"    ▷心动模式";
            labelMyMusicOne.font = [UIFont systemFontOfSize:15];
            labelMyMusicOne.textColor = [UIColor whiteColor];
            labelMyMusicOne.backgroundColor = [UIColor grayColor];
            labelMyMusicOne.layer.borderWidth = 0;
            [labelMyMusicOne.layer setMasksToBounds:YES];
            [labelMyMusicOne.layer setCornerRadius:10];
            [view addSubview:labelMyMusicOne];
        } else if (i == 1) {
            UILabel* labelPersonFMOne = [[UILabel alloc] initWithFrame:CGRectMake(15, 160, 100, 30)];
            labelPersonFMOne.text = @"听点新鲜的";
            labelPersonFMOne.font = [UIFont systemFontOfSize:15];
            labelPersonFMOne.textColor = [UIColor whiteColor];
            [view addSubview:labelPersonFMOne];
        } else if (i == 2) {
            UILabel* labelRecommendOne = [[UILabel alloc] initWithFrame:CGRectMake(13, 160, 120, 30)];
            labelRecommendOne.text = @"用户推荐精选";
            labelRecommendOne.font = [UIFont systemFontOfSize:15];
            labelRecommendOne.textColor = [UIColor whiteColor];
            UILabel* labelRecommendTwo = [[UILabel alloc] initWithFrame:CGRectMake(20, 30, 50, 30)];
            labelRecommendTwo.text = @"推荐";
            labelRecommendTwo.font = [UIFont systemFontOfSize:15];
            labelRecommendTwo.textColor = [UIColor whiteColor];
            [view addSubview:labelRecommendOne];
            [view addSubview:labelRecommendTwo];
        }
        [_scrollViewOne addSubview:view];
    }
    
    UILabel* labelRecent = [[UILabel alloc] initWithFrame:CGRectMake(13, 270, 150, 30)];
    labelRecent.text = @"最近播放";
    labelRecent.font = [UIFont systemFontOfSize:20];
    UIButton* buttonRecent = [[UIButton alloc] initWithFrame:CGRectMake(335, 270, 50, 20)];
    [buttonRecent setTitle:@"更多" forState:UIControlStateNormal];
    buttonRecent.titleLabel.font = [UIFont systemFontOfSize:15];
    [buttonRecent setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    UIButton* buttonRecentOne = [[UIButton alloc] initWithFrame:CGRectMake(370, 270, 40, 20)];
    [buttonRecentOne setTitle:@">" forState:UIControlStateNormal];
    buttonRecentOne.titleLabel.font = [UIFont systemFontOfSize:23];
    [buttonRecentOne setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [_viewTwo addSubview:labelRecent];
    [_viewTwo addSubview:buttonRecentOne];
    [_viewTwo addSubview:buttonRecent];
    
    NSArray* arrayRecent = [[NSArray alloc] init];
    arrayRecent = @[@"全部已播歌曲", @"300首", @"歌单：翻唱", @"继续播放"];
    
    for (int i = 0; i < 2; i++) {
        UIButton* buttonRecrnt = [[UIButton alloc] initWithFrame:CGRectMake(10 + 215 * i, 330, 90, 90)];
        NSString* str = [[NSString alloc] initWithFormat:@"/Users/haoqianbiao/Desktop/网易云音乐/music%d.jpg", i + 6];
        [buttonRecrnt setImage:[UIImage imageNamed:str] forState:UIControlStateNormal];
        buttonRecrnt.layer.borderWidth = 0;
        [buttonRecrnt.layer setMasksToBounds:YES];
        [buttonRecrnt.layer setCornerRadius:10];
        UIButton* buttonRecentOne = [[UIButton alloc] initWithFrame:CGRectMake(40 + 220 * i, 360, 30, 30)];
        [buttonRecentOne setImage:[UIImage imageNamed:@"/Users/haoqianbiao/Desktop/test1/UI/网易云/网易云音乐/bofang.png"] forState:UIControlStateNormal];
        UILabel* labelRecent = [[UILabel alloc] initWithFrame:CGRectMake(110 + 210 * i, 350, 130, 30)];
        labelRecent.text = [arrayRecent objectAtIndex: 2 * i];
        labelRecent.font = [UIFont systemFontOfSize:17];
        UILabel* labelRecentOne = [[UILabel alloc] initWithFrame:CGRectMake(110 + 210 * i, 380, 130, 30)];
        labelRecentOne.text = [arrayRecent objectAtIndex: 2 * i + 1];
        labelRecentOne.textColor = [UIColor grayColor];
        labelRecentOne.font = [UIFont systemFontOfSize:15];
        [_viewTwo addSubview:labelRecentOne];
        [_viewTwo addSubview:labelRecent];
        [_viewTwo addSubview:buttonRecrnt];
        [_viewTwo addSubview:buttonRecentOne];
    }
    
    _viewSongSheetOne = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
    _viewSongSheetTwo = [[UIView alloc] initWithFrame:CGRectMake(self.view.bounds.size.width, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
    
    NSArray* arraySongSheet = [[NSArray alloc] init];
    arraySongSheet = @[@"创建歌单", @"收藏歌单", @"歌单助手"];
    
    NSArray* arraySongSheetOne = [[NSArray alloc] init];
    arraySongSheetOne = @[@"3", @"10", @"beta"];
    
    for (int i = 0; i < 3; i++) {
        UIButton* buttonSongSheet = [[UIButton alloc] initWithFrame:CGRectMake(0 + 105 * i, 450, 100, 30)];
        [buttonSongSheet setTitle:[arraySongSheet objectAtIndex:i] forState:UIControlStateNormal];
        [buttonSongSheet setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        buttonSongSheet.titleLabel.font = [UIFont systemFontOfSize:20];
        UILabel* labelSongSheet = [[UILabel alloc] initWithFrame:CGRectMake(90 + 105 * i, 445, 30, 30)];
        labelSongSheet.font = [UIFont systemFontOfSize:12];
        labelSongSheet.text = [arraySongSheetOne objectAtIndex:i];
        labelSongSheet.textColor = [UIColor blackColor];
        if (i == 0) {
            [buttonSongSheet addTarget:self action:@selector(pressCreate) forControlEvents:UIControlEventTouchUpInside];
        } else if (i == 1) {
            [buttonSongSheet addTarget:self action:@selector(pressValue) forControlEvents:UIControlEventTouchUpInside];
        }
        [_viewTwo addSubview:buttonSongSheet];
        [_viewTwo addSubview:labelSongSheet];
    }
    
    UIButton* buttonAdd = [[UIButton alloc] init];
    [buttonAdd setImage:[UIImage imageNamed:@"/Users/haoqianbiao/Desktop/网易云音乐/hao.png"] forState:UIControlStateNormal];
    buttonAdd.frame = CGRectMake(340, 450, 30, 30);
    [_viewTwo addSubview:buttonAdd];
    UIButton* buttonAllipsis = [[UIButton alloc] init];
    [buttonAllipsis setImage:[UIImage imageNamed:@"/Users/haoqianbiao/Desktop/test1/UI/网易云/网易云音乐/shenglvehao.png"] forState:UIControlStateNormal];
    buttonAllipsis.frame = CGRectMake(370, 450, 30, 30);
    [_viewTwo addSubview:buttonAllipsis];
    
    _scrollViewTwo = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 500, self.view.bounds.size.width, 300)];
    _scrollViewTwo.pagingEnabled = YES;
    _scrollViewTwo.contentSize = CGSizeMake(self.view.bounds.size.width * 2, 300);
    _scrollViewTwo.contentOffset = CGPointMake(0, 0);
    _scrollViewTwo.showsHorizontalScrollIndicator = NO;
    _scrollViewTwo.userInteractionEnabled = YES;
    _scrollViewTwo.backgroundColor = [UIColor whiteColor];
    [_viewTwo addSubview:_scrollViewTwo];
    [_scrollViewTwo addSubview:_viewSongSheetOne];
    [_scrollViewTwo addSubview:_viewSongSheetTwo];
    
    NSArray* arraySongSheetTwo = [[NSArray alloc] init];
    arraySongSheetTwo = @[@"翻唱", @"跑步", @"Dj", @"夏日", @"NBA", @"王者BGM"];
    NSArray* arraySongSheetThree = [[NSArray alloc] init];
    arraySongSheetThree = @[@"13首", @"15首", @"18首", @"13首", @"6首", @"20首"];
    
    for (int i = 0; i < 6; i++) {
        UIButton* buttonSongSheet = [[UIButton alloc] init];
        UILabel* labelSongSheet = [[UILabel alloc] init];
        UILabel* labelSongSheetOne = [[UILabel alloc] init];
        if (i % 3 == 0) {
            buttonSongSheet.frame = CGRectMake(10, 10, 90, 90);
            labelSongSheet.frame = CGRectMake(110, 30, 130, 30);
            labelSongSheetOne.frame = CGRectMake(110, 60, 130, 30);
        } else if (i % 3 == 1 ) {
            buttonSongSheet.frame = CGRectMake(225, 10, 90, 90);
            labelSongSheet.frame = CGRectMake(320, 30, 130, 30);
            labelSongSheetOne.frame = CGRectMake(320, 60, 130, 30);
        } else {
            buttonSongSheet.frame = CGRectMake(10, 160, 90, 90);
            labelSongSheet.frame = CGRectMake(110, 190, 130, 30);
            labelSongSheetOne.frame = CGRectMake(110, 210, 130, 30);
        }
        NSString* str = [[NSString alloc] initWithFormat:@"/Users/haoqianbiao/Desktop/网易云音乐/music%d.jpg", i + 8 ];
        [buttonSongSheet setImage:[UIImage imageNamed:str] forState:UIControlStateNormal];
        buttonSongSheet.layer.borderWidth = 0;
        [buttonSongSheet.layer setMasksToBounds:YES];
        [buttonSongSheet.layer setCornerRadius:10];
        labelSongSheet.text = [arraySongSheetTwo objectAtIndex:i];
        labelSongSheet.font = [UIFont systemFontOfSize:17];
        labelSongSheetOne.text = [arraySongSheetThree objectAtIndex:i];
        labelSongSheetOne.textColor = [UIColor grayColor];

        labelSongSheet.font = [UIFont systemFontOfSize:15];
        if (i < 3) {
            [_viewSongSheetOne addSubview:labelSongSheet];
            [_viewSongSheetOne addSubview:labelSongSheetOne];
            [_viewSongSheetOne addSubview:buttonSongSheet];
        } else {
            [_viewSongSheetTwo addSubview:labelSongSheet];
            [_viewSongSheetTwo addSubview:labelSongSheetOne];
            [_viewSongSheetTwo addSubview:buttonSongSheet];
        }
   
    }
    UIButton* buttonImport = [[UIButton alloc] initWithFrame:CGRectMake(230, 180, 50, 60)];
    [buttonImport setImage:[UIImage imageNamed:@"/Users/haoqianbiao/Desktop/网易云音乐/Import.png"] forState:UIControlStateNormal];
    buttonImport.layer.borderWidth = 0;
    [buttonImport.layer setMasksToBounds:YES];
    [buttonImport.layer setCornerRadius:10];
    UILabel* labelSongSheet= [[UILabel alloc] initWithFrame:CGRectMake(300, 180, 150, 30)];
    labelSongSheet.text = @"导入外部歌曲";
    labelSongSheet.font = [UIFont systemFontOfSize:15];
    [_viewSongSheetOne addSubview:labelSongSheet];
    [_viewSongSheetOne addSubview:buttonImport];
}

-(void) pressCreate {
    [_scrollViewTwo scrollRectToVisible:CGRectMake(0, 10, self.view.bounds.size.width, 300) animated:YES];
}

-(void) pressValue {
    [_scrollViewTwo scrollRectToVisible:CGRectMake(self.view.bounds.size.width, 10, self.view.bounds.size.width, 300) animated:YES];
}

-(void) pressNext {
    SmallCloudViewController* smallCloudViewController = [[SmallCloudViewController alloc] init];
    
    [self.navigationController pushViewController:smallCloudViewController animated:YES];
}

-(void) press {
    imageShowViewController* imageShow = [[imageShowViewController alloc] init];
    imageShow.delegate = self;
    [self.navigationController pushViewController:imageShow animated:YES];
}

-(void) uploadAvatar:(NSString*) str {
    [_buttonPortrait setImage:[UIImage imageNamed:str] forState:UIControlStateNormal];
    [_viewOne addSubview:_buttonPortrait];
}


@end
