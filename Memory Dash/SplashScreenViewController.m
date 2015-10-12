//
//  SplashScreenViewController.m
//  Memory Dash
//
//  Created by Charles Mulloy on 9/10/14.
//  Copyright (c) 2014 Single Oat Studios. All rights reserved.
//

#import "SplashScreenViewController.h"

@interface SplashScreenViewController ()

@end
BOOL presented;
@implementation SplashScreenViewController

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
    [timer invalidate];
    currentScore = 3;
    [super viewDidLoad];
    timer = [NSTimer timerWithTimeInterval:.001 target:self selector:@selector(countDown) userInfo:nil repeats:YES];
    [[NSRunLoop currentRunLoop] addTimer:timer forMode:NSRunLoopCommonModes];
    colors = [NSMutableArray new];
    presented = NO;
    showHighScore = NO;
    
    
}

-(void)countDown
{
    
    
        currentScore -= .002;
        
        if( currentScore >=0)
        {
            int timerDisplayInt = (int)currentScore;
            
            splashLabel.text = ([NSString stringWithFormat:@"%d" , timerDisplayInt+1]);
        }
    
        else
        {
            if(!presented)
            {
                NSString *identifier = [NSString stringWithFormat:@"start%d", game]
                ;
                [self performSegueWithIdentifier:identifier sender:self];
                
                presented = YES;
            }
        }
    
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


@end
