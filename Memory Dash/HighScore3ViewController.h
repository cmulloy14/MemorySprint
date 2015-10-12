//
//  HighScore3ViewController.h
//  Memory Dash
//
//  Created by Charles Mulloy on 9/10/14.
//  Copyright (c) 2014 Single Oat Studios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ColorsViewController.h"
#import "ChooseHighScoreViewController.h"

NSArray *scoreLabels;
NSArray *stored3;
NSArray *stored4;
NSArray *stored5;

@interface HighScore3ViewController : UIViewController
{
    
    IBOutlet UILabel *gameTypeLabel;
    
    IBOutlet UILabel *score0;
    IBOutlet UILabel *score1;
    IBOutlet UILabel *score2;
    IBOutlet UILabel *score3;
    IBOutlet UILabel *score4;
    IBOutlet UILabel *score5;
    IBOutlet UILabel *score6;
    IBOutlet UILabel *score7;
    IBOutlet UILabel *score8;
    IBOutlet UILabel *score9;

    IBOutlet UILabel *yourScoreLabel;
    
    IBOutlet UIButton *restart;
    
    IBOutlet UIButton *back2choose;
}

@end
