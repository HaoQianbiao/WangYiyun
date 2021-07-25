//
//  accountViewController.m
//  网易云
//
//  Created by haoqianbiao on 2021/7/20.
//  Copyright © 2021 haoqianbiao. All rights reserved.
//

#import "AccountViewController.h"
#import "ViewControllerCell.h"
@interface AccountViewController ()

@end

@implementation AccountViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height) style:UITableViewStyleGrouped];
    
    [self.view addSubview:_tableView];
    
    _tableView.delegate = self;
    
    _tableView.dataSource = self;
    
    [self.tableView registerClass:[ViewControllerCell class] forCellReuseIdentifier:@"0"];
    [self.tableView registerClass:[ViewControllerCell class] forCellReuseIdentifier:@"1"];
    [self.tableView registerClass:[ViewControllerCell class] forCellReuseIdentifier:@"2"];
    [self.tableView registerClass:[ViewControllerCell class] forCellReuseIdentifier:@"3"];

    _arrayOne = [[NSArray alloc] initWithObjects:@"演出", @"商城", @"口袋彩铃", @"在线听歌免流量", nil];
    _arrayTwo = [[NSArray alloc] initWithObjects:@"设置", @"夜间模式", @"定时关闭", @"音乐黑名单", @"鲸云音效", @"添加Siri捷径", @"音乐闹钟", @"青少年模式",nil];
    _arrayThree = [[NSArray alloc] initWithObjects:@"我的订单", @"优惠券", @"分享网易云音乐", @"关于" ,nil];
    _switchNight = [[UISwitch alloc] init];
    
    UIBarButtonItem* barButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"/Users/haoqianbiao/Desktop/test1/UI/网易云/网易云音乐/saoyisao.png"] style:UIBarButtonItemStylePlain target:self action:nil];
    
    self.navigationItem.leftBarButtonItem = barButtonItem;
    
    self.navigationItem.leftBarButtonItem.tintColor = [UIColor whiteColor];
    
    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
    
    self.navigationController.navigationBar.translucent = YES;
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
   if (section == 2) {
        return 4;
    } else if (section == 3) {
        return 8;
    } else if (section == 4) {
        return 4;
    } else {
        return 1;
    }
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 6;
}

-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 5) {
        return 70;
    } else if (indexPath.section == 0) {
        return 180;
    } else {
        return 50;
    }
}


-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    if (indexPath.section == 0) {
        ViewControllerCell* cell = [self.tableView dequeueReusableCellWithIdentifier:@"0" forIndexPath:indexPath];
        return cell;
    } else if (indexPath.section == 1) {
        ViewControllerCell* cell = [self.tableView dequeueReusableCellWithIdentifier:@"1" forIndexPath:indexPath];
        return cell;
    } else if (indexPath.section == 2) {
        ViewControllerCell* cell = [self.tableView dequeueReusableCellWithIdentifier:@"2" forIndexPath:indexPath];
        cell.textLabel.text = _arrayOne[indexPath.row];
        _strImage = [[NSString alloc] initWithFormat:@"/Users/haoqianbiao/Desktop/test1/UI/网易云/网易云音乐/1_%ld.png", indexPath.row + 1];
        UIImage* image = [UIImage imageNamed:_strImage];
        cell.imageView.image = image;
        return cell;
    } else if (indexPath.section == 3) {
        ViewControllerCell* cell = [self.tableView dequeueReusableCellWithIdentifier:@"2" forIndexPath:indexPath];
        if (indexPath.row == 1) {
            cell.accessoryView = _switchNight;
        }

        cell.textLabel.text = _arrayTwo[indexPath.row];
        _strImage = [[NSString alloc] initWithFormat:@"/Users/haoqianbiao/Desktop/test1/UI/网易云/网易云音乐/2_%ld.png", indexPath.row + 1];
        UIImage* image = [UIImage imageNamed:_strImage];
        cell.imageView.image = image;
        
        return cell;
    } else if (indexPath.section == 4) {
        ViewControllerCell* cell = [self.tableView dequeueReusableCellWithIdentifier:@"2" forIndexPath:indexPath];
        cell.textLabel.text = _arrayTwo[indexPath.row];
        _strImage = [[NSString alloc] initWithFormat:@"/Users/haoqianbiao/Desktop/test1/UI/网易云/网易云音乐/3_%ld.png", indexPath.row + 1];
        UIImage* image = [UIImage imageNamed:_strImage];
        cell.imageView.image = image;
        return cell;
    } else {
        ViewControllerCell* cell = [self.tableView dequeueReusableCellWithIdentifier:@"3" forIndexPath:indexPath];
        return cell;
    }
}

-(NSString*) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    if (section == 2) {
        NSString* str = [[NSString alloc] initWithFormat:@"音乐服务"];
        return str;
    } else if (section == 3) {
       NSString* str = [[NSString alloc] initWithFormat:@"小工具"];
        return str;
    }
    return nil;
}


@end

