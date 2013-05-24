//
//  TRTabBarController.m
//  UniqueTabBarController
//
//  Created by Maeda, Kazuya | Enrique | SDTD on 5/24/13.
//  Copyright (c) 2013 Maeda, Kazuya | Enrique | SDTD. All rights reserved.
//

#import "TRTabBarController.h"

@interface TRTabBarController ()

@end

@implementation TRTabBarController

- (id)init {
    self = [super init];
    if (self) {
//        self.tabBar = [[UITabBar alloc] init];
        self.tabBar = [[UITabBar alloc] initWithFrame:CGRectMake(0.0, 411.0, 320.0, 49.0)];
        [self.view addSubview:self.tabBar];
        
    }
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated {
    NSLog(@"viewWillAppear was called.");
    
    
//    NSArray *items = [[NSArray arrayWithObject:]
    NSMutableArray *items = [[NSMutableArray alloc] init];
                      
    for (int i = 0; i < [self.viewControllers count]; i++) {
        UIViewController *vc = [self.viewControllers objectAtIndex:i];
        UITabBarItem *item = vc.tabBarItem;
        
        [items addObject:item];
    }

    
    //    NSArray *items = [[NSArray alloc] init];

    
    [self.tabBar setItems:items];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

# pragma mark - UITabBarControllerDelegate
- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item {
    NSLog(@"didSelectItem was called!!");
    
    
}

/*
- (void) setViewControllers:(NSArray *)viewControllers {
    self.viewControllers = viewControllers;

    NSLog(@"setViewControllers was called!");
}
 */

- (BOOL)selectItemWithTag:(int)tag {
    for (UITabBarItem *item in self.tabBar.items) {
        if (item.tag == tag) {
            self.tabBar.selectedItem = item;
            
            [self tabBar:self.tabBar didSelectItem:item];
            
            return YES;
        }
    }
    
	return NO;
}

@end
