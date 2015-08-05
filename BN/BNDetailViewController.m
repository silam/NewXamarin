//
//  BNDetailViewController.m
//  BN
//
//  Created by Si Lam on 7/13/12.
//  Copyright (c) 2012 Fluke Thermography. All rights reserved.
//

#import "BNDetailViewController.h"
#import "BNName.h"


@interface BNDetailViewController ()

@end

@implementation BNDetailViewController
@synthesize nameTextLabel;
@synthesize genderTextLabel;
@synthesize derivativeTextLabel;
@synthesize noteTextLabel;
@synthesize bnName;




- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.nameTextLabel.text = self.bnName.nameText;
    
    self.genderTextLabel.text = self.bnName.gender;//.text;
    
    self.derivativeTextLabel.text = self.bnName.derivation;
    
    self.noteTextLabel.text = self.bnName.notes;
    
    
    
    
    
}

- (void)viewDidUnload
{
    [self setNameTextLabel:nil];
    [self setGenderTextLabel:nil];
    [self setDerivativeTextLabel:nil];
    [self setNoteTextLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
