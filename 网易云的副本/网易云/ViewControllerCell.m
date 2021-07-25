//
//  ViewControllerCell.m
//  网易云
//
//  Created by haoqianbiao on 2021/7/21.
//  Copyright © 2021 haoqianbiao. All rights reserved.
//

#import "ViewControllerCell.h"

@interface ViewControllerCell ()

@end

@implementation ViewControllerCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    // Do any additional setup after loading the view.
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    _testView = [[UIView alloc] init];
    
    UIButton* buttonHead = [UIButton buttonWithType:UIButtonTypeCustom];
    
    UIImage* buttonImage = [UIImage imageNamed:@"/Users/haoqianbiao/Desktop/test1/UI/网易云/网易云音乐/touxiang1.png"];
    
    [buttonHead setImage:buttonImage forState:UIControlStateNormal];
    
    buttonHead.frame = CGRectMake(20, 30, 70, 70);
    
    [_testView addSubview:buttonHead];
    
    UILabel* labelHead = [[UILabel alloc] initWithFrame:CGRectMake(100, 55, 150, 20)];
    
    labelHead.text = @"嘿小天亮";
    
    [_testView addSubview:labelHead];
    
    UIButton* buttonMessage = [[UIButton alloc] init];
    
    buttonMessage.titleLabel.backgroundColor = [UIColor redColor];
    
    [buttonMessage setImage:[UIImage  imageNamed:@"/Users/haoqianbiao/Desktop/test1/UI/网易云/网易云音乐/wodexiaoxi.png"] forState:UIControlStateNormal];
    
    buttonMessage.frame = CGRectMake(30, 100, 40, 40);
    
    UILabel* labelMessage = [[UILabel alloc] initWithFrame:CGRectMake(22, 150, 80, 15)];
    
    labelMessage.text = @"我的消息";
    
    labelMessage.font = [UIFont systemFontOfSize:15];
    
    [_testView addSubview:labelMessage];
    [_testView addSubview:buttonMessage];
    
    UIButton* buttonFriend = [[UIButton alloc] init];
    
    buttonFriend.titleLabel.backgroundColor = [UIColor redColor];
    
    [buttonFriend setImage:[UIImage imageNamed:@"/Users/haoqianbiao/Desktop/test1/UI/网易云/网易云音乐/wodehaoyou.png"] forState:UIControlStateNormal];
    
    buttonFriend.frame = CGRectMake(140, 100, 40, 40);
    
    UILabel* labelFriend = [[UILabel alloc] initWithFrame:CGRectMake(132, 150, 80, 15)];
    
    labelFriend.text = @"我的好友";
    
    labelFriend.font = [UIFont systemFontOfSize:15];
    
    [_testView addSubview:labelFriend];
    [_testView addSubview:buttonFriend];
    
    UIButton* buttonPerson = [[UIButton alloc] init];
    
    buttonPerson.titleLabel.backgroundColor = [UIColor redColor];
    
    [buttonPerson setImage:[UIImage imageNamed:@"/Users/haoqianbiao/Desktop/test1/UI/网易云/网易云音乐/gerenzhuye.png"] forState:UIControlStateNormal];
    
    buttonPerson.frame = CGRectMake(260, 100, 40, 40);
    
    UILabel* labelPerson = [[UILabel alloc] initWithFrame:CGRectMake(252, 150, 80, 15)];
    
    labelPerson.text = @"个人主页";
    
    labelPerson.font = [UIFont systemFontOfSize:15];
    
    [_testView addSubview:labelPerson];
    [_testView addSubview:buttonPerson];
    
    UIButton* buttonPersonality = [[UIButton alloc] init];
    
    buttonPersonality.titleLabel.backgroundColor = [UIColor redColor];
    
    [buttonPersonality setImage:[UIImage imageNamed:@"/Users/haoqianbiao/Desktop/test1/UI/网易云/网易云音乐/gexingzhuangban.png"] forState:UIControlStateNormal];
    
    buttonPersonality.frame = CGRectMake(360, 100, 40, 40);
    
    UILabel* labelPersonality = [[UILabel alloc] initWithFrame:CGRectMake(352, 150, 80, 15)];
    
    labelPersonality.text = @"个性装扮";
    
    labelPersonality.font = [UIFont systemFontOfSize:15];
    
    [_testView addSubview:labelPersonality];
    [_testView addSubview:buttonPersonality];
    
    if ([self.reuseIdentifier isEqualToString:@"0"]) {
        [self.contentView addSubview:_testView];

    } else if ([self.reuseIdentifier isEqualToString:@"1"]) {
        self.textLabel.text = @"创作者中心";
        self.imageView.image = [UIImage imageNamed:@"/Users/haoqianbiao/Desktop/test1/UI/网易云/网易云音乐/create.png"];
        self.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    } else if ([self.reuseIdentifier isEqualToString:@"2"]) {
        self.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    } else {
        self.textLabel.text = @"退出登录";
        self.textLabel.textAlignment = NSTextAlignmentCenter;
        self.textLabel.textColor = [UIColor redColor];
    }
    return self;
}



@end
