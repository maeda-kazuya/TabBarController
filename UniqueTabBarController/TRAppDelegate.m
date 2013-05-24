//
//  TRAppDelegate.m
//  UniqueTabBarController
//
//  Created by Maeda, Kazuya | Enrique | SDTD on 5/24/13.
//  Copyright (c) 2013 Maeda, Kazuya | Enrique | SDTD. All rights reserved.
//

#import "TRAppDelegate.h"
#import "TRViewController.h"
#import "TRTabBarController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"

@implementation TRAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        self.viewController = [[TRViewController alloc] initWithNibName:@"TRViewController_iPhone" bundle:nil];
    } else {
        self.viewController = [[TRViewController alloc] initWithNibName:@"TRViewController_iPad" bundle:nil];
    }
    
//    self.window.rootViewController = self.viewController;
//    self.navigationController = [[UINavigationController alloc] initWithRootViewController:self.viewController];
    
    
//    self.tabBarController = [[UITabBarController alloc] init];
    self.tabBarController = [[TRTabBarController alloc] init];

    FirstViewController *firstViewController = [[FirstViewController alloc] init];
    SecondViewController *secondViewController = [[SecondViewController alloc] init];
    ThirdViewController *thirdViewController = [[ThirdViewController alloc] init];
    
    UITabBarItem *firstItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemFavorites tag:0];
	[firstItem addTarget:self action:@selector(selectItem1) forControlEvents:UIControlEventTouchUpInside];
    
    UITabBarItem *secondItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemDownloads tag:1];
    UITabBarItem *thirdItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemFeatured tag:2];
    
    firstViewController.tabBarItem = firstItem;
    secondViewController.tabBarItem = secondItem;
    thirdViewController.tabBarItem = thirdItem;
    
    NSArray* controllers = [NSArray arrayWithObjects:firstViewController, secondViewController, thirdViewController, nil];
    self.tabBarController.viewControllers = controllers;
    
    self.window.rootViewController = self.tabBarController;
    
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

- (void)selectItem1 {
	[self.tabBarController selectItemWithTag:0];
}


@end
