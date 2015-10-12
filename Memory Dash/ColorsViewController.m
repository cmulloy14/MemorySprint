//
//  ColorsViewController.m
//  Memory Dash
//
//  Created by Charles Mulloy on 9/10/14.
//  Copyright (c) 2014 Single Oat Studios. All rights reserved.
//

#import "ColorsViewController.h"

@interface ColorsViewController ()

@end

@implementation ColorsViewController

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
    
    [super viewDidLoad];
    [colorsCountLabel setText:[NSString stringWithFormat:@"%d", (int)[colors count]]];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];

}



- (IBAction)buttonPressed:(UIButton *)sender {

    if( sender == redButton)
    {
        if( [colors firstObject] == red1)
        {
            [colors removeObjectAtIndex:0];
            
        }
        else
        {
            [timer invalidate];
            NSLog(@"WRONG COLOR");
            [self performSegueWithIdentifier:@"restart" sender:self];
            
        }
    }
    else if( sender == greenButton)
    {
        if( [colors firstObject] == green1)
        {
            [colors removeObjectAtIndex:0];
            
        }
        else
        {
            [timer invalidate];
            NSLog(@"WRONG COLOR");
            [self performSegueWithIdentifier:@"restart" sender:self];
            
        }
    }
    else
    {
        if( [colors firstObject] == blue1)
        {
            [colors removeObjectAtIndex:0];
            
        }
        else
        {
            [timer invalidate];
            NSLog(@"WRONG COLOR");
            [self performSegueWithIdentifier:@"restart" sender:self];
            
        }
    }
    [colorsCountLabel setText:[NSString stringWithFormat:@"%d", (int)[colors count]]];
    
    if( [colors count] ==0)
        [self performSegueWithIdentifier:@"HighScore3" sender:self];
  
    
}

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    if( [identifier  isEqual: @"restart"])
    {
        [timer invalidate];
        return  YES;
    }
    else if ([identifier isEqual:@"main"])
    {
        [timer invalidate];
        return YES;
    }
    
    return  YES;
}



@end
