//
//  SecondViewController.m
//  Datatutor
//
//  Created by Si Lam on 7/1/12.
//  Copyright (c) 2012 Fluke Thermography. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

@synthesize delegate;

@synthesize favoriteColorString;

@synthesize secondFavoriteColorTextField, favoriteColorLabel, secondFavoriteColorLabel;



//////////////////////
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
///////////////////////////////
- (void)   viewWillAppear:(BOOL)animated
{
    favoriteColorLabel.text = favoriteColorString;
}


- (void) viewWillDisappear:(BOOL) animated
{
    [[self delegate] setSecondFavoriteColor:secondFavoriteColorTextField.text];
}


-(void) textFieldDidEndEditing:(UITextField*) textField
{
    secondFavoriteColorLabel.text = [[NSString alloc] initWithFormat:@"Your second favorite color is %@", secondFavoriteColorTextField.text];

    
}

// dismisses the keyboard when a user selects the return key
- (BOOL) textFieldShouldReturn: (UITextField *) theTextField
{
    [theTextField resignFirstResponder];
    
    return YES;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [self setSecondFavoriteColorTextField:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
