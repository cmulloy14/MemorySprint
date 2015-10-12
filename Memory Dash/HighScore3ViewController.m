//
//  HighScore3ViewController.m
//  Memory Dash
//
//  Created by Charles Mulloy on 9/10/14.
//  Copyright (c) 2014 Single Oat Studios. All rights reserved.
//

#import "HighScore3ViewController.h"
NSArray *sorted;
NSUserDefaults *userDefaults;
@interface HighScore3ViewController ()

@end

@implementation HighScore3ViewController

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
    //hide back button if not just played
    
    back2choose.hidden = YES;
    if (choseHigh3 || choseHigh4 || choseHigh5)
    {
        back2choose.hidden = NO;
        
        
    }
    
    count = NO;
     float yourScore = -currentScore/2;
    sorted = [NSArray new];
    userDefaults = [NSUserDefaults standardUserDefaults];
    stored3 = [NSArray new];
    stored4 = [NSArray new];
    stored5 = [NSArray new];
    highScores3 = [NSMutableArray new];
    highScores4 = [NSMutableArray new];
    highScores5 = [NSMutableArray new];
    
    NSLog(@"FINAL SCORE: %f", yourScore);
    [yourScoreLabel setText:[NSString stringWithFormat:@"%f", yourScore]];
    
    scoreLabels = [[NSArray alloc]initWithObjects:score0,score1,score2,score3,score4,score5,score6,score7,score8,score9, nil];
     NSNumber *theScore = [NSNumber numberWithFloat:yourScore];
   
    if(!showHighScore)
    {
        if( game == 3)
        {
            gameTypeLabel.text = @"3x3";
            BOOL added = NO;
            //handle user defaults
            if([userDefaults objectForKey:@"stored3"] == nil || [[userDefaults objectForKey:@"stored3"] count] == 0)
            {
                [userDefaults setObject:stored3 forKey:@"stored3"];
                
                if(!added)
                {
                    [highScores3 addObject:theScore];
                    added = YES;
                }
                
            }
            else
            {
                stored3 = [userDefaults objectForKey:@"stored3"];
                
                for( int i =0; i < [stored3 count]; i++) //equating highscores array to stored array
                {
                    
                    [highScores3 addObject:[stored3 objectAtIndex:i]];
                    NSLog(@"OBJECT RETRIEVED FROM STORED ARRAY");
                }
                
            }
            
            
            // sort high Score array
            for( int i=0; i < [highScores3 count]; i++)
            {
                
                
                if( [highScores3 count] < 10) //automatically add
                {
                    if(!added)
                        [highScores3 addObject: theScore];
                    
                    
                    //remove negative scores
                    for(int i =0; i < [highScores3 count]; i++)
                    {
                        if ([[highScores3 objectAtIndex:i]floatValue] <= 0.0)
                        {
                            [highScores3 removeObjectAtIndex:i];
                            
                        }
                        
                    }
                    sorted = [highScores3 sortedArrayUsingSelector:@selector(compare:)];
                    stored3 = sorted;
                    
                    break;
                }
                if( yourScore < [[highScores3 objectAtIndex:i]floatValue] )
                {
                    [highScores3 removeObject:[highScores3 lastObject]]; //get rid of worst high score
                    if(!added)
                        [highScores3 addObject: theScore];
                    
                    //remove negative scores
                    for(int i =0; i < [highScores3 count]; i++)
                    {
                        if ([[highScores3 objectAtIndex:i]floatValue] <= 0.0)
                        {
                            [highScores3 removeObjectAtIndex:i];
                            
                        }
                        
                    }
                    sorted = [highScores3 sortedArrayUsingSelector:@selector(compare:)];
                    stored3 = sorted;
                    break;
                }
            }
        
         
            
            [userDefaults setObject:stored3 forKey:@"stored3"]; //final version
            [userDefaults synchronize];
            //set labels
            for(int i =0; i < [stored3 count]; i++)
            {
                if ([[stored3 objectAtIndex:i]floatValue] >= 0.0)
                {
                UILabel *tempLabel = [scoreLabels objectAtIndex:i];
                tempLabel.text = [NSString stringWithFormat:@"%f", [[stored3 objectAtIndex:i]floatValue]];
                if( [[stored3 objectAtIndex:i] floatValue] == yourScore)
                    tempLabel.textColor = [UIColor redColor];
                }
            }
            NSLog(@"STORED 3 Count: %d", [stored3 count]);
        }
        
        else if( game == 4)
        {
            
            gameTypeLabel.text = @"4x4";
            BOOL added = NO;
            NSLog(@"GAME 4!");
            //handle user defaults
            if([userDefaults objectForKey:@"stored4"] == nil || [[userDefaults objectForKey:@"stored4"] count] == 0)
            {
                [userDefaults setObject:stored4 forKey:@"stored4"];
                if(!added)
                {
                    [highScores4 addObject:theScore];
                    added = YES;
                }
                
            }
            else
            {
                NSLog(@"fill Stored 4 Array");
                stored4 = [userDefaults objectForKey:@"stored4"];
                
                for( int i =0; i < [stored4 count]; i++) //equating highscores array to stored array
                {
                    
                    [highScores4 addObject:[stored4 objectAtIndex:i]];
                    NSLog(@"OBJECT RETRIEVED FROM STORED ARRAY");
                }
                
            }
            
            // sort high score array
            for( int i=0; i < [highScores4 count]; i++)
            {
                if([[highScores4 objectAtIndex:i] floatValue] < 0)
                {
                    [highScores4 removeObjectAtIndex:i];
                }
                
                if( [highScores4 count] < 10) //automatically add
                {
                    if(!added)
                        [highScores4 addObject: theScore];
                    
                    //remove negative scores
                    for(int i =0; i < [highScores3 count]; i++)
                    {
                        if ([[highScores3 objectAtIndex:i]floatValue] <= 0.0)
                        {
                            [highScores3 removeObjectAtIndex:i];
                            
                        }
                        
                    }
                    sorted = [highScores4 sortedArrayUsingSelector:@selector(compare:)];
                    stored4 = sorted;
                    [userDefaults setObject:stored4 forKey:@"stored4"];
                    [userDefaults synchronize];
                    
                    break;
                }
                if( yourScore < [[highScores4 objectAtIndex:i]floatValue] )
                {
                    [highScores4 removeObject:[highScores4 lastObject]]; //get rid of worst high score
                    if(!added)
                        [highScores4 addObject: theScore];
                    
                    //remove negative scores
                    for(int i =0; i < [highScores3 count]; i++)
                    {
                        if ([[highScores3 objectAtIndex:i]floatValue] <= 0.0)
                        {
                            [highScores3 removeObjectAtIndex:i];
                            
                        }
                        }
                    sorted = [highScores4 sortedArrayUsingSelector:@selector(compare:)];
                    stored4 = sorted;
                    [userDefaults setObject:stored4 forKey:@"stored4"];
                    [userDefaults synchronize];
                    
                    break;
                    
                }
            }
            
            //set labels
            for(int i =0; i < [stored4 count]; i++)
            {
                if ([[stored4 objectAtIndex:i]floatValue] >= 0.0)
                {
                UILabel *tempLabel = [scoreLabels objectAtIndex:i];
                tempLabel.text = [NSString stringWithFormat:@"%f", [[stored4 objectAtIndex:i]floatValue]];
                if( [[stored4 objectAtIndex:i] floatValue] == yourScore)
                    tempLabel.textColor = [UIColor redColor];
                }
            }
            
        }
        
        else
        {
            gameTypeLabel.text = @"5x5";
            BOOL added = NO;
            
            //handle user defaults
            if([userDefaults objectForKey:@"stored5"] == nil || [[userDefaults objectForKey:@"stored5"] count] == 0)
            {
                [userDefaults setObject:stored5 forKey:@"stored5"];
                NSLog(@"Empty Stored 5 Array");
                if(!added)
                {
                    [highScores5 addObject:theScore];
                    added = YES;
                }
            }
            else
            {
                NSLog(@"Filled Stored 5 Array");
                stored5 = [userDefaults objectForKey:@"stored5"];
                
                for( int i =0; i < [stored5 count]; i++) //equating highscores array to stored array
                {
                    
                    [highScores5 addObject:[stored5 objectAtIndex:i]];
                    NSLog(@"OBJECT RETRIEVED FROM STORED ARRAY");
                }
            }
            
            for( int i=0; i < [highScores5 count]; i++)
            {
                if([[highScores5 objectAtIndex:i] floatValue] < 0)
                {
                    [highScores5 removeObjectAtIndex:i];
                }
                if( [highScores5 count] < 10) //automatically add
                {
                    if(!added)
                        [highScores5 addObject: theScore];
                    
                    //remove negative scores
                    for(int i =0; i < [highScores3 count]; i++)
                    {
                        if ([[highScores3 objectAtIndex:i]floatValue] <= 0.0)
                        {
                            [highScores3 removeObjectAtIndex:i];
                            
                        }
                        
                    }
                    sorted = [highScores5 sortedArrayUsingSelector:@selector(compare:)];
                    stored5 = sorted;
                    
                    break;
                }
                if( yourScore < [[highScores5 objectAtIndex:i]floatValue] )
                {
                    [highScores5 removeObject:[highScores5 lastObject]]; //get rid of worst high score
                    if(!added)
                        [highScores5 addObject: theScore];
                    
                    
                    //remove negative scores
                    for(int i =0; i < [highScores3 count]; i++)
                    {
                        if ([[highScores3 objectAtIndex:i]floatValue] <= 0.0)
                        {
                            [highScores3 removeObjectAtIndex:i];
                            
                        }
                        
                    }
                    
                    sorted = [highScores5 sortedArrayUsingSelector:@selector(compare:)];
                    stored4 = sorted;
                    break;
                    
                }
            }
            
            [userDefaults setObject:stored5 forKey:@"stored5"];
            [userDefaults synchronize];
            for(int i =0; i < [stored5 count]; i++)
            {
                if ([[stored5 objectAtIndex:i]floatValue] >= 0.0)
                {
                UILabel *tempLabel = [scoreLabels objectAtIndex:i];
                tempLabel.text = [NSString stringWithFormat:@"%f", [[stored5 objectAtIndex:i]floatValue]];
                if( [[stored5 objectAtIndex:i] floatValue] == yourScore)
                    tempLabel.textColor = [UIColor redColor];
                }
            }
            
            NSLog(@"STORED 5 Count: %d", [stored5 count]);
        }
    }
    else //didnt play game, oming from main menu
    {
        [yourScoreLabel setText:@""];
        restart.hidden = YES;
        if(choseHigh3)
        {
            gameTypeLabel.text = @"3x3";
            if([userDefaults objectForKey:@"stored3"] == nil || [[userDefaults objectForKey:@"stored3"] count] == 0)
            {
                //No games played
                
            }
            
            stored3 = [userDefaults objectForKey:@"stored3"];
            
            for( int i =0; i < [stored3 count]; i++) //equating highscores array to stored array
            {
                [highScores3 addObject:[stored3 objectAtIndex:i]];
                NSLog(@"OBJECT RETRIEVED FROM STORED ARRAY");
            }
            sorted = [highScores3 sortedArrayUsingSelector:@selector(compare:)];
            stored3 = sorted;
            
            for(int i =0; i < [stored3 count]; i++)
            {
                UILabel *tempLabel = [scoreLabels objectAtIndex:i];
                tempLabel.text = [NSString stringWithFormat:@"%f", [[stored3 objectAtIndex:i]floatValue]];
                if( [[stored3 objectAtIndex:i] floatValue] == yourScore)
                    tempLabel.textColor = [UIColor redColor];
            }
            
        }
        else if (choseHigh4)
        {
            gameTypeLabel.text = @"4x4";
            if([userDefaults objectForKey:@"stored4"] == nil || [[userDefaults objectForKey:@"stored4"] count] == 0)
            {
                //No games played
                
            }
            
            stored4 = [userDefaults objectForKey:@"stored4"];
            
            for( int i =0; i < [stored4 count]; i++) //equating highscores array to stored array
            {
                [highScores4 addObject:[stored4 objectAtIndex:i]];
                NSLog(@"OBJECT RETRIEVED FROM STORED ARRAY");
            }
            sorted = [highScores4 sortedArrayUsingSelector:@selector(compare:)];
            stored4 = sorted;
            
            for(int i =0; i < [stored4 count]; i++)
            {
                UILabel *tempLabel = [scoreLabels objectAtIndex:i];
                tempLabel.text = [NSString stringWithFormat:@"%f", [[stored4 objectAtIndex:i]floatValue]];
                if( [[stored4 objectAtIndex:i] floatValue] == yourScore)
                    tempLabel.textColor = [UIColor redColor];
            }
            
            
        }
        else if(choseHigh5)
        {
            gameTypeLabel.text = @"5x5";
            if([userDefaults objectForKey:@"stored5"] == nil || [[userDefaults objectForKey:@"stored5"] count] == 0)
            {
                //No games played
                
            }
            
            stored5 = [userDefaults objectForKey:@"stored5"];
            
            for( int i =0; i < [stored5 count]; i++) //equating highscores array to stored array
            {
                [highScores5 addObject:[stored5 objectAtIndex:i]];
                NSLog(@"OBJECT RETRIEVED FROM STORED ARRAY");
            }
            sorted = [highScores5 sortedArrayUsingSelector:@selector(compare:)];
            stored5 = sorted;
            
            for(int i =0; i < [stored5 count]; i++)
            {
                UILabel *tempLabel = [scoreLabels objectAtIndex:i];
                tempLabel.text = [NSString stringWithFormat:@"%f", [[stored5 objectAtIndex:i]floatValue]];
                if( [[stored5 objectAtIndex:i] floatValue] == yourScore)
                    tempLabel.textColor = [UIColor redColor];
            }
            
            
        }
        
        
        
        
        
    }
    
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];

}

@end
