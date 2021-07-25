//
//  AppDelegate.m
//  网易云
//
//  Created by haoqianbiao on 2021/7/20.
//  Copyright © 2021 haoqianbiao. All rights reserved.
//

#import "AppDelegate.h"
#import "MyViewController.h"
#import "AccountViewController.h"
#import "LaunchViewController.h"
#import "FindViewController.h"
#import "YunCunViewController.h"
#import "VideoViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    

    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    [self.window makeKeyAndVisible];
    

    
    MyViewController* myViewController = [[MyViewController alloc] init];
    
    AccountViewController* accountViewController = [[AccountViewController alloc] init];
    
    FindViewController* findViewController = [[FindViewController alloc] init];
    
    YunCunViewController* yunCunViewController = [[YunCunViewController alloc] init];
    
    VideoViewController* videoViewController = [[VideoViewController alloc] init];
    
    myViewController.tabBarItem.image = [UIImage imageNamed:@"/Users/haoqianbiao/Desktop/test1/UI/网易云/网易云音乐/wode.png"];
    
    myViewController.tabBarItem.title = @"我的";
    
    accountViewController.tabBarItem.image = [UIImage imageNamed:@"/Users/haoqianbiao/Desktop/网易云音乐/zhanghao.png"];
    
    accountViewController.tabBarItem.title = @"账号";
    
    findViewController.tabBarItem.image = [UIImage imageNamed:@"/Users/haoqianbiao/Desktop/test1/UI/网易云/网易云音乐/faxian.png"];
    
    findViewController.tabBarItem.title = @"发现";
    
    yunCunViewController.tabBarItem.image = [UIImage imageNamed:@"/Users/haoqianbiao/Desktop/test1/UI/网易云/网易云音乐/yuncun.png"];
    
    yunCunViewController.tabBarItem.title = @"云村";
    
    videoViewController.tabBarItem.image = [UIImage imageNamed:@"/Users/haoqianbiao/Desktop/test1/UI/网易云/网易云音乐/shipin.png"];
    videoViewController.tabBarItem.title = @"视频";
    
    UITabBarController* tabBarController = [[UITabBarController alloc] init];
    
    UINavigationController* navigationControllerMy = [[UINavigationController alloc] initWithRootViewController:myViewController];
    UINavigationController* navigationControllerAccount = [[UINavigationController alloc] initWithRootViewController:accountViewController];
    UINavigationController* navigationControllerFind = [[UINavigationController alloc] initWithRootViewController:findViewController];
    UINavigationController* navigationControllerYunCun = [[UINavigationController alloc] initWithRootViewController:yunCunViewController];
    UINavigationController* navigationControllerVideo = [[UINavigationController alloc] initWithRootViewController:videoViewController];
    
    
    
    NSArray* arrayViewController = [NSArray arrayWithObjects: navigationControllerFind, navigationControllerVideo, navigationControllerMy, navigationControllerYunCun,navigationControllerAccount, nil];
    
    tabBarController.viewControllers = arrayViewController;
    
    self.window.rootViewController = tabBarController;
    
    tabBarController.tabBar.tintColor = [UIColor redColor];
    
    
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
