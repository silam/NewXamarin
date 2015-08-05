//
//  FirstViewController.m
//  Datatutor
//
//  Created by Si Lam on 7/1/12.
//  Copyright (c) 2012 Fluke Thermography. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController
@synthesize favoriteColorTextField;
@synthesize favoriteColorLabel;
@synthesize secondFavoriteColorLabel;


@synthesize secondFavoriteColorString;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
//////////////////
- (void) goToViewTwo
{
    if(self.secondViewController == nil)
    {
        SecondViewController *viewTwo = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:[NSBundle mainBundle]];
        self.secondViewController = viewTwo;
        //[viewTwo release];
    }
       
    secondViewController.favoriteColorString = [[NSString alloc] initWithFormat:@"Your favorite color is %@", favoriteColorTextField.text];
    [secondViewController setDelegate:self];
    
    
    [self.navigationController pushViewController:self.secondViewController animated:YES];    
    
    
}


- (void) setSecondFavoriteColor:(NSString *)secondFavoriteColor
{
    secondFavoriteColorString = secondFavoriteColor;
}


- (void)textFieldDidEndEditing:(UITextField *)textField
{
    favoriteColorLabel.text = [[NSString alloc] initWithFormat:@"Your favorite color is %@", favoriteColorTextField.text];
}

- (void)viewWillAppear:(BOOL)animated
{
    secondFavoriteColorLabel.text = [[NSString alloc] initWithFormat:@"Your second favorite color is %@", secondFavoriteColorString];
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
    
    UIBarButtonItem *nextButton = [[UIBarButtonItem alloc] initWithTitle:@"Next" style:UIBarButtonItemStyleBordered target:self action:@selector(goToViewTwo)];
    
    self.navigationItem.rightBarButtonItem = nextButton;    
    
    
}

- (void)viewDidUnload
{
    [self setFavoriteColorTextField:nil];
    [self setFavoriteColorLabel:nil];
    [self setSecondFavoriteColorLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
