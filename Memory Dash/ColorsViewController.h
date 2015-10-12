//
//  ColorsViewController.h
//  Memory Dash
//
//  Created by Charles Mulloy on 9/10/14.
//  Copyright (c) 2014 Single Oat Studios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ArrowButtonsViewController.h"

@interface ColorsViewController : UIViewController
{
    
    IBOutlet UIButton *redButton;
    IBOutlet UIButton *greenButton;
    IBOutlet UIButton *blueButton;
    IBOutlet UILabel *colorsCountLabel;
    
}
- (IBAction)buttonPressed:(UIButton *)sender;

@end
