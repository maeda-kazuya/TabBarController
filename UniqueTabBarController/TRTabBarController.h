//
//  TRTabBarController.h
//  UniqueTabBarController
//
//  Created by Maeda, Kazuya | Enrique | SDTD on 5/24/13.
//  Copyright (c) 2013 Maeda, Kazuya | Enrique | SDTD. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TRTabBarController : UIViewController <UITabBarControllerDelegate>

@property(nonatomic,copy) NSArray *viewControllers;

//@property(nonatomic,readonly) UITabBar *tabBar NS_AVAILABLE_IOS(3_0);
@property(nonatomic, strong) UITabBar *tabBar;


- (BOOL)selectItemWithTag:(int)tag;


@end
