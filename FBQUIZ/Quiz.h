//
//  Game.h
//  Quiz
//
//  Created by Suchir and Udit on 8/14/15.
//  Copyright (c) 2015 Sushi-UDIT APPS. All rights reserved.
//

#import <UIKit/UIKit.h>

long CategoryLoaded;
int QuestionSelected;
BOOL Answer1Correct;
BOOL Answer2Correct;
BOOL Answer3Correct;
BOOL Answer4Correct;
int ScoreNumber;
int LivesNumber;
BOOL GameInProgress;
long HighScore;

// This sets integers and booleans for the quiz. Booleans are almost like integers, but they have 2 possible end results, "Yes" or "No".



@interface Quiz : UIViewController{
    
    IBOutlet UILabel *CategorySelected;
    IBOutlet UILabel *QuestionText;
    IBOutlet UIButton *Answer1;
    IBOutlet UIButton *Answer2;
    IBOutlet UIButton *Answer3;
    IBOutlet UIButton *Answer4;
    IBOutlet UILabel *AnswerA;
    IBOutlet UILabel *AnswerB;
    IBOutlet UILabel *AnswerC;
    IBOutlet UILabel *AnswerD;
    IBOutlet UIButton *NextCategory;
    IBOutlet UIButton *Exit;
    IBOutlet UILabel *Score;
    IBOutlet UILabel *Lives;
    IBOutlet UIImageView *Result;
    IBOutlet UIButton *PlayGame;
        //This defines the outlets for the quiz labels.
    
}
-(IBAction)Answer1:(id)sender;
-(IBAction)Answer2:(id)sender;
-(IBAction)Answer3:(id)sender;
-(IBAction)Answer4:(id)sender;
-(void)Category1;
-(void)Category2;
-(void)Category3;
-(void)Category4;
-(void)Category5;
-(void)Category6;
-(void)RightAnswer;
-(void)WrongAnswer;

//This is creating voids and defining possibilities for when one of these buttons are pressed on

@end
