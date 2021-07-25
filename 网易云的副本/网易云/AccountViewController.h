//
//  accountViewController.h
//  网易云
//
//  Created by haoqianbiao on 2021/7/20.
//  Copyright © 2021 haoqianbiao. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AccountViewController : UIViewController
<UITableViewDelegate,
UITableViewDataSource>
@property (nonatomic, strong) UITableView* tableView;
@property (nonatomic, strong) NSArray* arrayOne;
@property (nonatomic, strong) NSArray* arrayTwo;
@property (nonatomic, strong) NSArray* arrayThree;
@property (nonatomic, strong) UISwitch* switchNight;
@property (nonatomic, strong) NSString* strImage;


@end

NS_ASSUME_NONNULL_END
