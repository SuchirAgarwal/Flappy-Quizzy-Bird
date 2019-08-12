//
//  Catagories.h
//  Quiz
//
//  Created by Suchir and Udit on 8/14/15.
//  Copyright (c) 2015 Sushi-UDIT APPS. All rights reserved.
//

#import <UIKit/UIKit.h>

   
    int Category1Number;
    int Category2Number;
    int Category1SelectedNumber;
    int Category2SelectedNumber;



@interface Catagories : UIViewController{
    
    
    IBOutlet UIButton *Category1;
    IBOutlet UIButton *Category2;
    
    
}

-(IBAction)Button1:(id)sender;
-(IBAction)Button2:(id)sender;

@end

// This sets the buttons to pick the categories as a variable, outlet, and a button.