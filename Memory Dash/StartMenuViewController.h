//
//  StartMenuViewController.h
//  Memory Sprint
//
//  Created by Teen on 8/13/14.
//  Copyright (c) 2014 Teen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ChooseHighScoreViewController.h"



NSMutableArray *highScores3;
NSMutableArray *highScores4;
NSMutableArray *highScores5;
NSMutableArray *allButtons;
NSMutableArray *blockButtons;
NSMutableArray *pathButtons;
NSMutableArray *readyButtons;
NSMutableArray *availableButtons;
NSMutableArray *pathTaken;
NSMutableArray *arrows;
NSMutableArray *downAndRighters;
NSMutableArray *downersOnly;
NSMutableArray *rightersOnly;
NSMutableArray *blockableButtons;
NSMutableArray *directions;
NSMutableArray *colors;
NSMutableArray *colorBoxes;
NSMutableArray *highScores3;
NSMutableArray *highScores4;
NSMutableArray *highScores5;

NSArray *rightArrowColors;
NSArray *downArrowColors;


UIImage *white;
UIImage *red;
UIImage *green;
UIImage *blue;
UIImage *ready;
UIImage *black;
UIImage *downArrow;
UIImage *rightArrow;
UIImage *downArrowRed;
UIImage *downArrowGreen;
UIImage *downArrowBlue;
UIImage *rightArrowRed;
UIImage *rightArrowGreen;
UIImage *rightArrowBlue;
UIImage *finish;

NSString *right;
NSString *down;
NSString *red1;
NSString *green1;
NSString *blue1;

int prevButtonIndex;
int selectedArrayIndex;
int game;

BOOL timerStarted;
BOOL badColor;
BOOL badDirection;
BOOL showHighScore; 

@interface StartMenuViewController : UIViewController
{
    IBOutlet UIButton *start3x3;
    IBOutlet UIButton *start4x4;
    IBOutlet UIButton *start5x5;
    
}
- (IBAction)pressButton:(UIButton *)sender;


@end
