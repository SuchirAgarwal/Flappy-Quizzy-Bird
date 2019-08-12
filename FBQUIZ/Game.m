//  Game1.m
//  Bird
//
//  Created by Suchir and Udit on 8/29/15.
//  Copyright (c) 2015 Sushi-UDIT APPS. All rights reserved.
//  Implementing the Bird Game

#import "Game.h"

@interface Game ()



@end

@implementation Game


// If the Bird hits the tunnel then the Game is over and the final score is displayed

-(void)GameOver{
    
    if (Score1number > HighScoreNumber) {
        [[NSUserDefaults standardUserDefaults] setInteger:Score1number forKey:@"FBGameScoreSaved"];
    }
    
    [TunnelMovement invalidate];
    [BirdMovement invalidate];
    
    Exit.hidden = NO;
    TunnelTop.hidden = YES;
    TunnelBottom.hidden = YES;
    Bird.hidden = YES;
    
}

//For incrementing the score

-(void)Score{
    
    Score1number += 1;
    ScoreLabel.text = [NSString stringWithFormat:@"%i", Score1number];
    
    
}

//Starting the Game Starting the Bird movement and initializing tunnel positions and tunnel movement

-(IBAction)StartGame:(id)sender{
    
    TunnelTop.hidden = NO;
    TunnelBottom.hidden = NO;
    Bird.hidden = NO;
    StartGame.hidden = YES;
    Score1number = 0;
    
    BirdMovement = [NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector:@selector(BirdMoving) userInfo:nil repeats:YES];
    
    [self PlaceTunnels];
    
    TunnelMovement = [NSTimer scheduledTimerWithTimeInterval:0.0045 target:self selector:@selector(TunnelMoving) userInfo:nil repeats:YES];
    
}

//Describing tunnel movement

-(void)TunnelMoving{
    
    //Initializing Tunnel top and bottom
    
    TunnelTop.center = CGPointMake(TunnelTop.center.x - 1, TunnelTop.center.y);
    TunnelBottom.center = CGPointMake(TunnelBottom.center.x - 1, TunnelBottom.center.y);
    
    //If TunnelTop  is less than -23 then place tunnels
    if (TunnelTop.center.x < -23) {
        [self PlaceTunnels];
    }
    //If TunnelTop is equal to 30 then increase score
    if (TunnelTop.center.x == 30) {
        [self Score];
       // [self PlaceTunnels];
    }

    // If the bird touches/intersects the tunnel then the game ends
    if (CGRectIntersectsRect(Bird.frame, TunnelTop.frame)) {
        [self GameOver];
    }
    
    if (CGRectIntersectsRect(Bird.frame, TunnelBottom.frame)) {
        [self GameOver];
    }
    
    if (CGRectIntersectsRect(Bird.frame, Top.frame)) {
        [self GameOver];
    }
    
    if (CGRectIntersectsRect(Bird.frame, Bottom.frame)) {
        [self GameOver];
    }
    
}

//Initialize tunnels with random numbers and set Tunneltop center and tunnelBottom center
-(void)PlaceTunnels{
    
    RandomTopTunnelPosition = arc4random() %350;
    RandomTopTunnelPosition = RandomTopTunnelPosition - 228;
    RandomBottomTunnelPosition = RandomTopTunnelPosition + 655;
    
    TunnelTop.center = CGPointMake(343, RandomTopTunnelPosition);
    TunnelBottom.center = CGPointMake(343, RandomBottomTunnelPosition);
    
    
}

//Defining Bird flight and defining bird center and Bird flight

-(void)BirdMoving{
    
    Bird.center = CGPointMake(Bird.center.x, Bird.center.y - BirdFlight);
    
    BirdFlight -= 1;
    
    if (BirdFlight < -15) {
        BirdFlight = -15;
    }
    
    if (BirdFlight > 0) {
        Bird.image = [UIImage imageNamed:@"BirdUp"];
    }
    if (BirdFlight < 0) {
        Bird.image = [UIImage imageNamed:@"BirdDown"];
    }
    
    
    
}

//Inititalize Birdflight to 13

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    BirdFlight = 13;
    
}





- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

// Main method for intializing 

- (void)viewDidLoad
{
    
    TunnelTop.hidden = YES;
    TunnelBottom.hidden = YES;
    
    Exit.hidden = YES;
    Score1number = 0;
    
    HighScoreNumber = [[NSUserDefaults standardUserDefaults] integerForKey:@"FBGameScoreSaved"];
    
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
