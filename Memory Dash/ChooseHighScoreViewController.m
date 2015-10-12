//
//  ChooseHighScoreViewController.m
//  Memory Dash
//
//  Created by Charles Mulloy on 3/11/15.
//  Copyright (c) 2015 Single Oat Studios. All rights reserved.
//

#import "ChooseHighScoreViewController.h"

@interface ChooseHighScoreViewController ()

@end

@implementation ChooseHighScoreViewController

- (void)viewDidLoad {
    choseHigh4 = NO;
    choseHigh3 = NO;
    choseHigh5 = NO;
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)chose3:(id)sender {
    choseHigh3 = YES;
}

- (IBAction)chose4:(id)sender {
    choseHigh4 = YES;
}
- (IBAction)chose5:(id)sender {
    choseHigh5 = YES;
}




@end
