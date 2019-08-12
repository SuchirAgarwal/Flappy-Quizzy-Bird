//
//  FlappyBird.m
//  Quiz
//
//  Created by Suchir and Udit on 2/28/16.
//  Copyright © 2016 Sushi-UDIT APPS. All rights reserved.
//

#import "FlappyBird.h"
@interface FlappyBird ()

@end

@implementation FlappyBird

- (void)viewDidLoad
{
    
    
    FBGameScoreNumber = [[NSUserDefaults standardUserDefaults] integerForKey:@"FBGameScoreSaved"];
    HighScoreFB.text = [NSString stringWithFormat:@"High Score: %li", (long)FBGameScoreNumber];
    
    //This  sets the text for what will be shown for the game's highscore.
    
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}


@end


