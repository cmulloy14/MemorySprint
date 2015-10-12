//
//  HowTo3ViewController.m
//  Memory Dash
//
//  Created by Charles Mulloy on 3/10/15.
//  Copyright (c) 2015 Single Oat Studios. All rights reserved.
//

#import "HowTo3ViewController.h"

@interface HowTo3ViewController ()

@end
int step;
@implementation HowTo3ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    step =0;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)redButPress:(id)sender {
    
    if(step ==1)
    {
        [count3Label setText:@"2"];
        step =2;
               [define3label setText:@" The remaining number of steps is at the bottom"];
        [arrowLabel setText:@"------>"];
    }
    
    else if (step == 3)
    {
        [count3Label setText:@"0"];
        [self performSegueWithIdentifier:@"complete" sender:self];
        
    }
}

- (IBAction)greenButPress:(id)sender {
    
    if(step ==2)
    {
        [count3Label setText:@"1"];
        step = 3;
        [arrowLabel setText:@""];
        [define3label setText:@" Last Step!"];
    }
    
    
}

- (IBAction)blueButPress:(id)sender {
    
    if(step ==0)
    {
        [count3Label setText:@"3"];
        step =1;
        [define3label setText:@" You dont have to remember your steps anymore!"];
        
    }
    
    
}


@end
