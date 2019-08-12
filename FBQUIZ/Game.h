//
//  Game1.h
//  Bird
//
//  Created by Suchir and Udit on 8/29/15.
//  Copyright (c) 2015 Sushi-UDIT APPS. All rights reserved.
//  Initializing variables for the Bird game

#import <UIKit/UIKit.h>


int BirdFlight;
int RandomTopTunnelPosition;
int RandomBottomTunnelPosition;
int Score1number;
NSInteger HighScoreNumber;

@interface Game : UIViewController{
    
    IBOutlet UIImageView *Bird;
    IBOutlet UIButton *StartGame;
    IBOutlet UIImageView *TunnelTop;
    IBOutlet UIImageView *TunnelBottom;
    IBOutlet UIImageView *Top;
    IBOutlet UIImageView *Bottom;
    IBOutlet UIButton *Exit;
    IBOutlet UILabel *ScoreLabel;

    NSTimer *BirdMovement;
    NSTimer *TunnelMovement;
}

-(IBAction)StartGame:(id)sender;
-(void)BirdMoving;
-(void)TunnelMoving;
-(void)PlaceTunnels;
-(void)Score;
-(void)GameOver;

@end
