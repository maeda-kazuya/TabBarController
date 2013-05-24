//
//  TRAppDelegate.h
//  UniqueTabBarController
//
//  Created by Maeda, Kazuya | Enrique | SDTD on 5/24/13.
//  Copyright (c) 2013 Maeda, Kazuya | Enrique | SDTD. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TRViewController;

@interface TRAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) TRViewController *viewController;

@end
