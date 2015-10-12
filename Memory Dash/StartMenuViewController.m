  //
//  StartMenuViewController.m
//  Memory Sprint
//
//  Created by Teen on 8/13/14.
//  Copyright (c) 2014 Teen. All rights reserved.
//

#import "StartMenuViewController.h"
NSUserDefaults* userDefaults;
float highScore0;

@interface StartMenuViewController ()

@end

@implementation StartMenuViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    //initialize userDefaults for saving scores
    userDefaults = [NSUserDefaults standardUserDefaults];
    
    white = [UIImage imageNamed:@"open.png"];
    red = [UIImage imageNamed:@"red box.png"];
    green = [UIImage imageNamed:@"green box.png"];
    blue = [UIImage imageNamed:@"blue box.png"];
    ready = [UIImage imageNamed:@"yellow.png"];
    black = [UIImage imageNamed:@"purple.png"];
    downArrow = [UIImage imageNamed:@"downArrowBlack.png"];
    rightArrow = [UIImage imageNamed:@"rightArrowBlack.png"];
    downArrowRed = [UIImage imageNamed:@"downArrowRed.png"];
    downArrowGreen = [UIImage imageNamed:@"downArrowGreen.png"];
    downArrowBlue= [UIImage imageNamed:@"downArrowBlue.png"];
    rightArrowRed = [UIImage imageNamed:@"rightArrowRed.png"];
    rightArrowGreen = [UIImage imageNamed:@"rightArrowGreen.png"];
    rightArrowBlue = [UIImage imageNamed:@"rightArrowBlue.png"];
    finish = [UIImage imageNamed:@"finishFlag.png"];
    
    colorBoxes = [[NSMutableArray alloc] initWithObjects:red, green, blue, nil];
    
    right = @"right";
    down = @"down";
    red1 = @"red";
    green1 = @"green";
    blue1 = @"blue";
    
    timerStarted = NO;
    showHighScore = NO;

}

- (void)didReceiveMemoryWarning
{

}
- (IBAction)HighScoreButtonPressed:(id)sender {
    

    showHighScore = YES;
    
}



- (IBAction)pressButton:(UIButton *)sender {
    
    if(sender == start3x3)
        game =3;
    else if(sender == start4x4)
        game =4;
    else
        game =5;
    
    [self performSegueWithIdentifier:@"splash" sender:self];
    
    choseHigh3 = NO;
    choseHigh4 = NO;
    choseHigh5 = NO;
    
    
    
}
@end
