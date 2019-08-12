//
//  Catagories.m
//  Quiz
//
//  Created by Suchir and Udit on 8/14/15.
//  Copyright (c) 2015 Sushi-UDIT APPS. All rights reserved.
//

#import "Catagories.h"

@interface Catagories()

@end

@implementation Catagories


-(IBAction)Button1:(id)sender{
    
    [ [ NSUserDefaults standardUserDefaults] setInteger:Category1SelectedNumber forKey:@"CategorySaved"];

}
-(IBAction)Button2:(id)sender{
    
    [ [ NSUserDefaults standardUserDefaults] setInteger:Category2SelectedNumber forKey:@"CategorySaved"];
    // This sets what will happen when the button for the selecting the categories will be pressed.

}

    

    


- (void)viewDidLoad {
    
    
    
    
    Category1Number = arc4random() %3;
    Category2Number = arc4random() %3;
    
    // This sets the modulus for the random pick of what will show when the buttons for selcecting the categories shows.
    
    
    switch (Category1Number){
        case 0:
            [Category1 setTitle:@"Math" forState:UIControlStateNormal];
            Category1SelectedNumber = 1;
            break;
        case 1:
            [Category1 setTitle:@"Science" forState:UIControlStateNormal];
            Category1SelectedNumber = 2;
            break;
        case 2:
            [Category1 setTitle:@"History" forState:UIControlStateNormal];
            Category1SelectedNumber = 3;
            break;
            
            //These are all of the possibilities of the first button for the categories.
        default:
            break;
    }
    
    
    switch (Category2Number){
        case 0:
            [Category2 setTitle:@"Geography" forState:UIControlStateNormal];
            Category2SelectedNumber = 4;
            break;
        case 1:
            [Category2 setTitle:@"Sports" forState:UIControlStateNormal];
            Category2SelectedNumber = 5;
            break;
        case 2:
            [Category2 setTitle:@"Books" forState:UIControlStateNormal];
            Category2SelectedNumber = 6;
            break;
            
            //These are all of the possibilities of the second button for the categories.
        default:
            break;
    }
    [super viewDidLoad];
    
    
    
    
}





- (void)didReceiveMemoryWarning {


    
    
    [super didReceiveMemoryWarning];
    
}

        
@end
