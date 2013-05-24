//
//  TRAppDelegate.h
//  UniqueTabBarController
//
//  Created by Maeda, Kazuya | Enrique | SDTD on 5/24/13.
//  Copyright (c) 2013 Maeda, Kazuya | Enrique | SDTD. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TRViewController;
@class TRTabBarController;

//@interface TRAppDelegate : UIResponder <UIApplicationDelegate, UITabBarControllerDelegate>
@interface TRAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) TRViewController *viewController;
//@property (strong, nonatomic) UINavigationController *navigationController;

//@property (strong, nonatomic) UITabBarController *tabBarController;
@property (strong, nonatomic) TRTabBarController *tabBarController;

@end
