//
//  ViewController.m
//  Quiz
//
//  Created by Suchir and Udit on 8/14/15.
//  Copyright (c) 2015 Sushi-UDIT APPS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    HighScoreNumber1 = [[NSUserDefaults standardUserDefaults] integerForKey:@"HighScoreSaved"];
    HighScore.text = [NSString stringWithFormat:@"High Score: %li", (long)HighScoreNumber1];
    
    
    //  This shows the application what should actually be shown by the high sore integer when it is running.
    
    
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}

@end



