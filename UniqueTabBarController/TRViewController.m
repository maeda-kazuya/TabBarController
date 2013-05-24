//
//  TRViewController.m
//  UniqueTabBarController
//
//  Created by Maeda, Kazuya | Enrique | SDTD on 5/24/13.
//  Copyright (c) 2013 Maeda, Kazuya | Enrique | SDTD. All rights reserved.
//

#import "TRViewController.h"
#import "FirstViewController.h"
@interface TRViewController ()

@end

@implementation TRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)nextButtonTapped:(id)sender {
    FirstViewController *nextViewController = [[FirstViewController alloc] init];
//    [self.navigationController pushViewController:trTabBarController animated:YES];
    [self presentViewController:nextViewController animated:YES completion:^void {
        NSLog(@"nextButton tapped.");
    }];
}
@end
