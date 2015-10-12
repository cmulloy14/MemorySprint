//
//  HowTo4ViewController.m
//  Memory Dash
//
//  Created by Charles Mulloy on 3/11/15.
//  Copyright (c) 2015 Single Oat Studios. All rights reserved.
//

#import "HowTo4ViewController.h"

@interface HowTo4ViewController ()

@end

@implementation HowTo4ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [howToTimer invalidate];
    [timeLabel setText:[NSString stringWithFormat:@"%f",howToScore/2]];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
