//
//  HowToViewController.h
//  Memory Dash
//
//  Created by Charles Mulloy on 3/10/15.
//  Copyright (c) 2015 Single Oat Studios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StartMenuViewController.h"
BOOL twoRightPath;
float howToScore;
NSTimer *howToTimer;

@interface HowToViewController : UIViewController
{
    
    
    IBOutlet UILabel *describeLabel;
    
    IBOutlet UIButton *but0;
    IBOutlet UIButton *but3;
    IBOutlet UIButton *but4;
    IBOutlet UIButton *but5;
    IBOutlet UIButton *but7;
    IBOutlet UIButton *but8;
    
}

@end
