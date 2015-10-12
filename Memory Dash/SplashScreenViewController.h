//
//  SplashScreenViewController.h
//  Memory Dash
//
//  Created by Charles Mulloy on 9/10/14.
//  Copyright (c) 2014 Single Oat Studios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StartMenuViewController.h"
NSTimer *timer;
BOOL presented;
BOOL count;
float currentScore;


@interface SplashScreenViewController : UIViewController
{
    
    IBOutlet UILabel *splashLabel;
    
    IBOutlet UILabel *wrongLabel;
    
}

@end
