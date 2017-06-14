//
//  TRTabBarController.h
//  UniqueTabBarController
//
//  Created by Maeda, Kazuya |  |  on 5/24/13.
//  Copyright (c) 2013 Maeda, Kazuya |  | . All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *greetingLabel;
@property (weak, nonatomic) IBOutlet UIButton *backButton;
- (IBAction)backButtonTapped:(id)sender;

@end
