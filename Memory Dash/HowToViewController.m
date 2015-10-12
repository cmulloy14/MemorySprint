//
//  HowToViewController.m
//  Memory Dash
//
//  Created by Charles Mulloy on 3/10/15.
//  Copyright (c) 2015 Single Oat Studios. All rights reserved.
//

#import "HowToViewController.h"

@interface HowToViewController ()

@end
int step;

@implementation HowToViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    step =0;
    
    [but0 setBackgroundImage:ready forState:UIControlStateNormal];
    [but3 setBackgroundImage:white forState:UIControlStateNormal];
    [but4 setBackgroundImage:white forState:UIControlStateNormal];
    [but5 setBackgroundImage:white forState:UIControlStateNormal];
    [but7 setBackgroundImage:white forState:UIControlStateNormal];
    [but8 setBackgroundImage:finish forState:UIControlStateNormal];
    
    howToScore = 0;
    
    [howToTimer invalidate];
    howToTimer = [NSTimer timerWithTimeInterval:.001 target:self selector:@selector(countDown) userInfo:nil repeats:YES];
    [[NSRunLoop currentRunLoop] addTimer:howToTimer forMode:NSRunLoopCommonModes];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)step0:(id)sender {
    
    if(step ==0)
    {
        [but0 setBackgroundImage:red forState:UIControlStateNormal];
        [but3 setBackgroundImage:ready forState:UIControlStateNormal];
        
        [describeLabel setText:@"Press the yellow square to take another step and get some direction!"];
        step = 1;
    }
}

- (IBAction)step1:(id)sender {
    
    if(step == 1)
    {
        [but0 setBackgroundImage:downArrow forState:UIControlStateNormal];
        [but3 setBackgroundImage:red forState:UIControlStateNormal];
        [but4 setBackgroundImage:ready forState:UIControlStateNormal];
        
        [describeLabel setText:@"Take another step, but remember your steps! You will need to know your path for the next stage!"];
        
        step = 2;
        
    }
}
- (IBAction)step2:(id)sender {
    
    if(step == 2)
    {
        [but3 setBackgroundImage:rightArrow forState:UIControlStateNormal];
        [but4 setBackgroundImage:red forState:UIControlStateNormal];
        [but5 setBackgroundImage:ready forState:UIControlStateNormal];
        [but7 setBackgroundImage:ready forState:UIControlStateNormal];
        
        
        [describeLabel setText:@"There can be multiple possible steps! Take whichever step you like."];
        
        step = 3;
        
    }
}
- (IBAction)step31:(id)sender {
    
    if(step == 3)
    {
        
        [but4 setBackgroundImage:rightArrow forState:UIControlStateNormal];
        [but5 setBackgroundImage:downArrow forState:UIControlStateNormal];
        [but8 setBackgroundImage:ready forState:UIControlStateNormal];
        [but7 setBackgroundImage:white forState:UIControlStateNormal];
        
        twoRightPath = YES;
        
        [describeLabel setText:@"You have completed completed the path. Press the final step to move on to the next stage!"];
        
        step = 4;
    }
}


- (IBAction)step32:(id)sender {
    
    if(step == 3)
    {
        
        [but4 setBackgroundImage:downArrow forState:UIControlStateNormal];
        [but5 setBackgroundImage:white forState:UIControlStateNormal];
        [but8 setBackgroundImage:ready forState:UIControlStateNormal];
        [but7 setBackgroundImage:rightArrow forState:UIControlStateNormal];
        
        twoRightPath = NO;
        
        [describeLabel setText:@"You have completed the path. Press the final step to move on to the next stage!"];
        
        step = 4;
    }
    
}

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    if(step ==4)
        return YES;
    else if ([identifier  isEqual: @"mainMenu"])
        return YES;
    else
        return NO;
}


- (IBAction)purpPress:(id)sender {
    
    [describeLabel setText:@"Purple squares are road blocks! Choose your path accordingly"];

    
}

-(void)countDown
{
    
    
    howToScore += .002;
    
    
    
    
}



@end
