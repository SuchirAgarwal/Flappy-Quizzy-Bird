//
//  Game.m
//  Quiz
//
//  Created by Suchir and Udit on 8/14/15.
//  Copyright (c) 2015 Sushi-UDIT APPS. All rights reserved.
//  Quiz Implementation

#import "Quiz.h"

@interface Quiz ()

@end

@implementation Quiz


//This is creating a method for what will happen IF the answer selected by the user is correct

-(void)RightAnswer{
        ScoreNumber = ScoreNumber + 1;
        Score.text = [NSString stringWithFormat:@"%i", ScoreNumber];
        if (ScoreNumber > HighScore)
        {
                [[NSUserDefaults standardUserDefaults] setInteger:ScoreNumber forKey:@"HighScoreSaved"];
        }
        NextCategory.hidden = NO;
        Answer1.hidden = YES;
        Answer2.hidden = YES;
        Answer3.hidden = YES;
        Answer4.hidden = YES;
        QuestionText.hidden = YES;
        CategorySelected.hidden = YES;
        Result.hidden = NO;
        Result.image = [UIImage imageNamed:@"Right"];
        PlayGame.hidden = NO;

   
}

//This is creating a method for what will happen IF the answer selected by the user is wrong

-(void)WrongAnswer{
    
        LivesNumber = LivesNumber - 1;
        Lives.text = [NSString stringWithFormat:@"%i", LivesNumber];
        NextCategory.hidden = NO;
        Answer1.hidden = YES;
        Answer2.hidden = YES;
        Answer3.hidden = YES;
        Answer4.hidden = YES;
        QuestionText.hidden = YES;
        CategorySelected.hidden = YES;
        Result.hidden = NO;
        Result.image = [UIImage imageNamed:@"Wrong"];
    
        if (LivesNumber == 0)
        {
        
            Result.image = [UIImage imageNamed:@"GameOver"];
            NextCategory.hidden = YES;
            Exit.hidden = NO;
            GameInProgress = NO;
            PlayGame.hidden = YES;
        }
    
    
    
    }

//Setting the IBAction for the answer selected by the user is correct or wrong.

-(IBAction)Answer1:(id)sender{
    
    if (Answer1Correct == YES) {
        [self RightAnswer];
    }
    else{
        [self WrongAnswer];
    }
}
-(IBAction)Answer2:(id)sender{
    
    if (Answer2Correct == YES) {
        [self RightAnswer];
    }
    else{
        [self WrongAnswer];
    }
 
}
-(IBAction)Answer3:(id)sender{
    
    if (Answer3Correct == YES) {
        [self RightAnswer];
    }
    else{
        [self WrongAnswer];
    }

}
-(IBAction)Answer4:(id)sender{
    
    if (Answer4Correct == YES) {
        [self RightAnswer];
    }
    else{
        [self WrongAnswer];
    }

}

//These are the cases for what question might show if category one, which is Math, would be selected. This is what can show for the first button.

-(void)Category1{
    
    switch (QuestionSelected) {
            
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"How many sides does an enneahectaenneacontakaienneagon have?"];
            [Answer1 setTitle:@"9" forState:UIControlStateNormal];
            [Answer2 setTitle:@"99" forState:UIControlStateNormal];
            [Answer3 setTitle:@"999" forState:UIControlStateNormal];
            [Answer4 setTitle:@"9999" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"What is a binomial?"];
            [Answer1 setTitle:@"80.00" forState:UIControlStateNormal];
            [Answer2 setTitle:@"A 2nomial" forState:UIControlStateNormal];
            [Answer3 setTitle:@"A three-termed polynomial" forState:UIControlStateNormal];
            [Answer4 setTitle:@"A two-termed polynomial" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"Which number is in complex number form?"];
            [Answer1 setTitle:@"i" forState:UIControlStateNormal];
            [Answer2 setTitle:@"500-i" forState:UIControlStateNormal];
            [Answer3 setTitle:@"800" forState:UIControlStateNormal];
            [Answer4 setTitle:@"5+i" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"What is absolute value?"];
            [Answer1 setTitle:@"The zeros of a polynomial" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Solute value" forState:UIControlStateNormal];
            [Answer3 setTitle:@"The distance away from zero" forState:UIControlStateNormal];
            [Answer4 setTitle:@"The positive number of a number" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
        case 4:
            QuestionText.text = [NSString stringWithFormat:@"What is the other name for Euclidean Gemoetry?"];
            [Answer1 setTitle:@"Spherical Geometry" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Space Geometry" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Non-Median Geometry" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Plane Geometry" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
        case 5:
            QuestionText.text = [NSString stringWithFormat:@"How many zeros are there in one vigintillion?"];
            [Answer1 setTitle:@"62" forState:UIControlStateNormal];
            [Answer2 setTitle:@"72" forState:UIControlStateNormal];
            [Answer3 setTitle:@"99" forState:UIControlStateNormal];
            [Answer4 setTitle:@"268" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
        case 6:
            QuestionText.text = [NSString stringWithFormat:@"Which of these figure have diagnols that are perpendicular to each other?"];
            [Answer1 setTitle:@"Parallelogram" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Kite" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Triangle" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Tetrahedron" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
        case 7:
            QuestionText.text = [NSString stringWithFormat:@"In the sense of directions, what degree do dimensions have to be relative to other dimensions?"];
            [Answer1 setTitle:@"90" forState:UIControlStateNormal];
            [Answer2 setTitle:@"180" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Tuxedo" forState:UIControlStateNormal];
            [Answer4 setTitle:@"60" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
        case 8:
            QuestionText.text = [NSString stringWithFormat:@"For all real numbers b and c such that the product c and 3 is b, which of the following expressions represents the sum of 3 and c in terms of b?"];
            [Answer1 setTitle:@"b+3" forState:UIControlStateNormal];
            [Answer2 setTitle:@"3b+3" forState:UIControlStateNormal];
            [Answer3 setTitle:@"3(b+3)" forState:UIControlStateNormal];
            [Answer4 setTitle:@"(b/3) + 3" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
        case 9:
            QuestionText.text = [NSString stringWithFormat:@"?"];
            [Answer1 setTitle:@"90" forState:UIControlStateNormal];
            [Answer2 setTitle:@"180" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Tuxedo" forState:UIControlStateNormal];
            [Answer4 setTitle:@"60" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;

       
        default:
            break;
    }
    
    
    
}

  //These are the cases for what question might show if category two, which is Science, would be selected.

-(void)Category2{
    
    switch (QuestionSelected) {
            
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"What is the scientific method?"];
            [Answer1 setTitle:@"How to solve a scientific question" forState:UIControlStateNormal];
            [Answer2 setTitle:@"The reasoning of science" forState:UIControlStateNormal];
            [Answer3 setTitle:@"How science is defined" forState:UIControlStateNormal];
            [Answer4 setTitle:@"A list of the greatest scientists" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"What are the main parts of an atom?"];
            [Answer1 setTitle:@"Proton and Electron" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Proton and Neutron" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Neutron,Proton,and Electron" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Isotopes" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"What percentage of Earth is covered in water?"];
            [Answer1 setTitle:@"10%" forState:UIControlStateNormal];
            [Answer2 setTitle:@"50%" forState:UIControlStateNormal];
            [Answer3 setTitle:@"100%" forState:UIControlStateNormal];
            [Answer4 setTitle:@"71%" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"What is the ecological carrying capacity of humans?"];
            [Answer1 setTitle:@"11 Billion people" forState:UIControlStateNormal];
            [Answer2 setTitle:@"7 Billion people" forState:UIControlStateNormal];
            [Answer3 setTitle:@"10 Billion people" forState:UIControlStateNormal];
            [Answer4 setTitle:@"100 Billion people" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
        case 4:
            QuestionText.text = [NSString stringWithFormat:@"What is an ocean dead zone?"];
            [Answer1 setTitle:@"An area with low oxygen levels" forState:UIControlStateNormal];
            [Answer2 setTitle:@"An area with low nutrients" forState:UIControlStateNormal];
            [Answer3 setTitle:@"An area with excessive pollution" forState:UIControlStateNormal];
            [Answer4 setTitle:@"An area with high oxygen" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
        case 5:
            QuestionText.text = [NSString stringWithFormat:@"What is bathymetry?"];
            [Answer1 setTitle:@"Topography of land" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Topography of outer space" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Topography of the ocean floor" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Topography of the human body" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
        case 6:
            QuestionText.text = [NSString stringWithFormat:@"Which of these is a real kingdom in terms of taxonomy?"];
            [Answer1 setTitle:@"Plantesius" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Animalia" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Fungarama" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Chemorama" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
        case 7:
            QuestionText.text = [NSString stringWithFormat:@"What planet in our solar system produces the strongest wind speeds ever recorded?"];
            [Answer1 setTitle:@"Neptune" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Jupiter" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Uranus" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Mars" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
        case 8:
            QuestionText.text = [NSString stringWithFormat:@"What is another name for the Black Death?"];
            [Answer1 setTitle:@"The Spanish Flu" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Tb" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Bubonic Plague" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Ebola" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
        case 9:
            QuestionText.text = [NSString stringWithFormat:@"What element does Fe stand for?"];
            [Answer1 setTitle:@"Hydrogen" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Iron" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Cobalt" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Potassium" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
        case 10:
            QuestionText.text = [NSString stringWithFormat:@"what is fermented, then distilled to get rum?"];
            [Answer1 setTitle:@"Sugar beet juice" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Malted Barley" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Grape juice" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Sugar cane juice" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
        default:
            break;
    }
    
}

//These are the cases for what question might show if category three, which is History, would be selected.

-(void)Category3{
    
    switch (QuestionSelected) {
            
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"Who was the first president of the United States?"];
            [Answer1 setTitle:@"Abraham Lincoln" forState:UIControlStateNormal];
            [Answer2 setTitle:@"George Washington" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Thomas Jefferson" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Benjamin Franklin" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"During what years did world war two last?"];
            [Answer1 setTitle:@"1900-2000" forState:UIControlStateNormal];
            [Answer2 setTitle:@"1950-1951" forState:UIControlStateNormal];
            [Answer3 setTitle:@"1500-1700" forState:UIControlStateNormal];
            [Answer4 setTitle:@"1939-1945" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"Who was president during the Louisiana purchase?"];
            [Answer1 setTitle:@"George Washington" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Abraham Lincoln" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Thomas Jefferson" forState:UIControlStateNormal];
            [Answer4 setTitle:@"George W. Bush" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"Place the 3 philosophers Plato, Socrates, and Aristotle in order of oldest to youngest."];
            [Answer1 setTitle:@"Plato, Aristotle, Socrates" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Aristotle, Plato, Socrates" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Socrates, Plato, Aristotle" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Plato, Socrates, Aristotle" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
        case 4:
            QuestionText.text = [NSString stringWithFormat:@"Who conquered the Macedonians in 120 B.C."];
            [Answer1 setTitle:@"Romans" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Greeks" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Muslims" forState:UIControlStateNormal];
            [Answer4 setTitle:@"No one" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
        case 5:
            QuestionText.text = [NSString stringWithFormat:@"Which early 20th century Turkish leader abolished the use of the Arabic alphabet?"];
            [Answer1 setTitle:@"Barrack Obama" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Kemal Atutürk" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Themistocles" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Bob" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
        case 6:
            QuestionText.text = [NSString stringWithFormat:@"What was the highest position in the original Roman Republic?"];
            [Answer1 setTitle:@"Consul" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Magistrate" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Tribune" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Senate" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
        case 7:
            QuestionText.text = [NSString stringWithFormat:@"When did George W. Bush have his greatest disapproval rating?"];
            [Answer1 setTitle:@"Before Re-Election " forState:UIControlStateNormal];
            [Answer2 setTitle:@"After 9/11" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Before 9/11" forState:UIControlStateNormal];
            [Answer4 setTitle:@"After Katrina" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
        case 8:
            QuestionText.text = [NSString stringWithFormat:@"Who was Spartacus?"];
            [Answer1 setTitle:@"Emperor" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Congressman" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Gladiator" forState:UIControlStateNormal];
            [Answer4 setTitle:@"King" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
        case 9:
            QuestionText.text = [NSString stringWithFormat:@"Who was the leader of the Soviet Union that tore down the Berlin Wall?"];
            [Answer1 setTitle:@"Vladimir Lenin" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Michael Rodgers" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Joseph Statin" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Mikhail Gorbachev" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;



        default:
            break;
    }
    
}
//These are the cases for what question might show if category four, which is Geography, would be selected. This starts what could be shown for the second button.

-(void)Category4{
    switch (QuestionSelected) {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"What is the capital of India?"];
            [Answer1 setTitle:@"Washington D.C." forState:UIControlStateNormal];
            [Answer2 setTitle:@"Mumbai" forState:UIControlStateNormal];
            [Answer3 setTitle:@"New Delhi" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Hyderabad" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"What is the capital of Nevada?"];
            [Answer1 setTitle:@"FrankFurt" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Carson City" forState:UIControlStateNormal];
            [Answer3 setTitle:@"New York" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Nevada" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"What is the capital of the United States"];
            [Answer1 setTitle:@"Washington State" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Lancaster" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Philadelphia" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Washington D.C." forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"What is the name if the tallest mountain in the world?"];
            [Answer1 setTitle:@"Mount Everest" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Mount Kilimonjaro" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Mount Kangchenjunga" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Mount K2" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
        case 4:
            QuestionText.text = [NSString stringWithFormat:@"What coast is Pennsylvania on?"];
            [Answer1 setTitle:@"North" forState:UIControlStateNormal];
            [Answer2 setTitle:@"West" forState:UIControlStateNormal];
            [Answer3 setTitle:@"South" forState:UIControlStateNormal];
            [Answer4 setTitle:@"East" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
        case 5:
            QuestionText.text = [NSString stringWithFormat:@"What was the name of the capital of China before Beijing?"];
            [Answer1 setTitle:@"China Town" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Peking" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Seoul" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Gangnam" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
        case 6:
            QuestionText.text = [NSString stringWithFormat:@"What position is Grece from the Adriatic Sea?"];
            [Answer1 setTitle:@"West" forState:UIControlStateNormal];
            [Answer2 setTitle:@"North" forState:UIControlStateNormal];
            [Answer3 setTitle:@"East" forState:UIControlStateNormal];
            [Answer4 setTitle:@"South" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
        default:
            break;
    }
    
}

//These are the cases for what question might show if category five, which is Sports, would be selected.

-(void)Category5{
    switch (QuestionSelected) {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"What team won the 2014 fifa world cup?"];
            [Answer1 setTitle:@"Netherlands" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Mexico" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Brazil" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Germany" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"Where are the 2016 olympics being hosted?"];
            [Answer1 setTitle:@"Rio de Janeiro" forState:UIControlStateNormal];
            [Answer2 setTitle:@"London" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Beijing" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Tokoyo" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"Who got the most medals in the 2012 olympics?"];
            [Answer1 setTitle:@"Japan" forState:UIControlStateNormal];
            [Answer2 setTitle:@"London" forState:UIControlStateNormal];
            [Answer3 setTitle:@"United States" forState:UIControlStateNormal];
            [Answer4 setTitle:@"China" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"Who has the most three-pointers in the NBA?"];
            [Answer1 setTitle:@"Kevin Durant" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Lebron James" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Kyrie Irving" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Stephen Curry" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
        
        case 4:
            QuestionText.text = [NSString stringWithFormat:@"What is Ronaldo's real first name?"];
            [Answer1 setTitle:@"Cristiano" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Cristian" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Cristianos" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Cristianoe" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
        case 5:
            QuestionText.text = [NSString stringWithFormat:@"Who won the previous ICC Cricket Tournament?"];
            [Answer1 setTitle:@"England" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Australia" forState:UIControlStateNormal];
            [Answer3 setTitle:@"India" forState:UIControlStateNormal];
            [Answer4 setTitle:@"New Zealand" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
        case 6:
            QuestionText.text = [NSString stringWithFormat:@"What sport is Michael Phillips best known for?"];
            [Answer1 setTitle:@"Tennis" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Table Tennis" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Badminton" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Swimming" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;

        default:
            break;
    }
    
}

//These are the cases for what question might show if category six, which is Books, would be selected.
-(void)Category6{
    switch (QuestionSelected) {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"What is the name of the author who wrote the percy Jackson series?"];
            [Answer1 setTitle:@"J.K Rowling" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Rick Riordan" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Dr.Suess" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Mark Twain" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"Who wrote the harry potter series?"];
            [Answer1 setTitle:@"J.K Rowling" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Rick Riordan." forState:UIControlStateNormal];
            [Answer3 setTitle:@"Mark Twain" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Dr.Suess" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"What is the real name of Dr.Suess?"];
            [Answer1 setTitle:@"Suess" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Doctor" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Dr.Suess" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Theodor Suess Giesel" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"Who is the main character of Harry Potter?"];
            [Answer1 setTitle:@"Harry Potter" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Percy Jackson" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Dr.Suess" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Mark Twain" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
        case 4:
            QuestionText.text = [NSString stringWithFormat:@"What is the famous character, Percy Jackson?"];
            [Answer1 setTitle:@"A demigod." forState:UIControlStateNormal];
            [Answer2 setTitle:@"A god." forState:UIControlStateNormal];
            [Answer3 setTitle:@"Zeus." forState:UIControlStateNormal];
            [Answer4 setTitle:@"Lord of the universe." forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
        case 5:
            QuestionText.text = [NSString stringWithFormat:@"What school does Harry Potter go to?"];
            [Answer1 setTitle:@"Hogwarts" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Springhouse Middle School" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Daniel Wright Middle School" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Paul J. Gelinas Jr. High" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
        case 6:
            QuestionText.text = [NSString stringWithFormat:@"What is the name of the main character in The Giver?"];
            [Answer1 setTitle:@"Jonny boy" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Yo Yo Ma" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Jerry" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Jonas" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
        case 7:
            QuestionText.text = [NSString stringWithFormat:@"Who does Harry Potter end up marrying?"];
            [Answer1 setTitle:@"Jeremy" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Ginny" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Hermione" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Fiona" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
        case 8:
            QuestionText.text = [NSString stringWithFormat:@"Who is the author of the series: A Series of Unfortunate Events?"];
            [Answer1 setTitle:@"Jeremy Snicket" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Bauldelaire Snicker" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Lemony Snicket" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Jeremy Bauldelair`" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
        case 9:
            QuestionText.text = [NSString stringWithFormat:@"In the book The Lightning Thief, who ended up stealing Zeus's master bolt?"];
            [Answer1 setTitle:@"Ares" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Luke" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Grover" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Hades" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
        case 10:
            QuestionText.text = [NSString stringWithFormat:@"Who are the three main Baudelaire children in the series A Series of Unfortunate Events?"];
            [Answer1 setTitle:@"Violet, Klaus, and Sunny" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Violet, Klaus, and Olaf" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Lemony, Violet, and Sunny" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Klaus, Sunny, and Olaf" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
        case 11:
            QuestionText.text = [NSString stringWithFormat:@"In the book The Giver, what is the name of the Giver??"];
            [Answer1 setTitle:@"Jonas" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Ronald" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Fiona" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Not mentioned in the book" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
        case 12:
            QuestionText.text = [NSString stringWithFormat:@"Who does Ron Weasley end up marrying?"];
            [Answer1 setTitle:@"Ginny" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Violet" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Fiona" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Hermione" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
        case 13:
            QuestionText.text = [NSString stringWithFormat:@"Who is the main character in the book The Hunger Games?"];
            [Answer1 setTitle:@"Ellie" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Jack" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Katniss" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Peter" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;

        case 14:
            QuestionText.text = [NSString stringWithFormat:@"Who does Katniss kill at the end of the book The Mocking Jay?"];
            [Answer1 setTitle:@"Alma Coin" forState:UIControlStateNormal];
            [Answer2 setTitle:@"President Snow" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Peeta" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Frank Dadde" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
        case 15:
            QuestionText.text = [NSString stringWithFormat:@"What district does the capitol blow up in the book Catching Fire?"];
            [Answer1 setTitle:@"1" forState:UIControlStateNormal];
            [Answer2 setTitle:@"13" forState:UIControlStateNormal];
            [Answer3 setTitle:@"12" forState:UIControlStateNormal];
            [Answer4 setTitle:@"7" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
        case 16:
            QuestionText.text = [NSString stringWithFormat:@"Who does Harry Potter end up marrying?"];
            [Answer1 setTitle:@"Jeremy" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Ginny" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Hermione" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Fiona" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
        case 17:
            QuestionText.text = [NSString stringWithFormat:@"Who is the evilest person in the series of Harry Potter?"];
            [Answer1 setTitle:@"Harry Potter" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Voldemort" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Tom Rille" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Tom Rile" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;

        default:
            break;
    }
    
}

//Main method where all the initializing of the Quiz game happens

- (void)viewDidLoad {
    HighScore = [[NSUserDefaults standardUserDefaults] integerForKey:@"HighScoreSaved"];
    
    PlayGame.hidden = YES;
    


    
  // If Game is Not in progress then intialize Lives to 3 Score to 0
    
    if (GameInProgress == NO) {
        
        LivesNumber = 3;
        ScoreNumber = 0;
        GameInProgress = YES;
    }
    
    // else if Game is in progress the hide Result, Exit and Next Category buttons
    Result.hidden = YES;
    Exit.hidden = YES;
    NextCategory.hidden = YES;
    
    // Display the lives and score
    
    Lives.text = [NSString stringWithFormat:@"%i", LivesNumber];
    Score.text = [NSString stringWithFormat:@"%i", ScoreNumber];
    
    Answer1Correct = NO;
    Answer2Correct = NO;
    Answer3Correct = NO;
    Answer4Correct = NO;
    
    // Set the Category Loaded
    CategoryLoaded = [ [NSUserDefaults standardUserDefaults] integerForKey:@"CategorySaved"];
    QuestionSelected = arc4random() %6;
    
    switch (CategoryLoaded){
case 1:
    CategorySelected.text = [NSString stringWithFormat:@"Math"];
    [self Category1];
    break;
case 2:
    CategorySelected.text = [NSString stringWithFormat:@"Science"];
    [self Category2];
    break;
case 3:
    CategorySelected.text = [NSString stringWithFormat:@"History"];
    [self Category3];
    break;
case 4:
    CategorySelected.text = [NSString stringWithFormat:@"Geography"];
    [self Category4];
    break;
case 5:
    CategorySelected.text = [NSString stringWithFormat:@"Sports"];
    [self Category5];
    break;
case 6:
    CategorySelected.text = [NSString stringWithFormat:@"Books"];
    [self Category6];
    break;

default:
    break;
    
    }
    
    
    
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
