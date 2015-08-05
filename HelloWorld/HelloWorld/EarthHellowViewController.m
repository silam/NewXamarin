//
//  EarthHellowViewController.m
//  HelloWorld
//
//  Created by Si Lam on 5/17/12.
//  Copyright (c) 2012 Fluke Thermography. All rights reserved.
//

#import "EarthHellowViewController.h"

@interface EarthHellowViewController ()

@end

@implementation EarthHellowViewController
@synthesize textField;
@synthesize label;
@synthesize userName = _userName;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setTextField:nil];
    [self setLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (BOOL) textFieldShouldReturn:(UITextField*) theTextField
{
    if (theTextField == self.textField )
    {
        [theTextField resignFirstResponder];
    }
    return YES;
}

- (IBAction)changeGreeting:(id)sender {
    
    
    self.userName = self.textField.text;
    
    NSString *nameString = self.userName;
    
    if ( [nameString length] == 0 )
        nameString = @"World";
    
    
    NSString *greeting = [[NSString alloc] initWithFormat:@"Hello, %@!", nameString];
                    
    self.label.text = greeting;
                        
}
@end
