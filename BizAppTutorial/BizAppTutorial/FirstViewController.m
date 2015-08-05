//
//  FirstViewController.m
//  BizAppTutorial
//
//  Created by Si Lam on 7/21/12.
//  Copyright (c) 2012 Fluke Thermography. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController


@synthesize logoLabel, descriptionLabel, callUsButton, directionsButton, copyrightLabel;

-(void)callNumber
{
    UIApplication *app = [UIApplication sharedApplication]; 
    [app openURL:[NSURL URLWithString:[NSString stringWithFormat:@"tel:004-102-3929"]]];
}

-(void)openMap
{
    UIApplication *app = [UIApplication sharedApplication]; 
    [app openURL:[NSURL URLWithString:@"http://maps.google.com/maps?q=Paris"]];
}

- (void)viewDidLoad
{
    self.callUsButton = [self createButtonWithFrame:CGRectMake(22, 259, 276, 52) andLabel:@"Call us"];
    
    self.directionsButton = [self createButtonWithFrame:CGRectMake(22, 319, 276, 52) andLabel:@"Directions"];
    
    [self.callUsButton addTarget:self action:@selector(callNumber) forControlEvents:UIControlEventTouchUpInside];
    
    [self.directionsButton addTarget:self action:@selector(openMap) forControlEvents:UIControlEventTouchUpInside];   
    
    [self.view addSubview:callUsButton];
    [self.view addSubview:directionsButton];    
    self.logoLabel = [[FXLabel alloc] initWithFrame:CGRectMake(14, 11, 280, 87)];
    
    [logoLabel setFont:[UIFont boldSystemFontOfSize:45]];
    
    [logoLabel setTextColor:[UIColor whiteColor]];
    [logoLabel setShadowColor:[UIColor redColor]];
    [logoLabel setShadowOffset:CGSizeMake(0, 2)];
    [logoLabel setTextAlignment:UITextAlignmentCenter];
    [logoLabel setBackgroundColor:[UIColor clearColor]];
    [logoLabel setText:@"Attorney Biz"];
    
    //[logoLabel   setGradientStartColor:[UIColor colorWithRed:163.0/255 green:203.0/255 blue:222.0/255 alpha:1.0]];
    
    //[logoLabel setGradientEndColor:[UIColor whiteColor]];
    
    [self.view addSubview:logoLabel];
    
    self.descriptionLabel = [self createLabelWithFrame:CGRectMake(42, 91, 238, 55) andFontSize:19 andText:@"A short description goes here"];
    
    self.copyrightLabel = [self createLabelWithFrame:CGRectMake(22, 379, 269, 23) andFontSize:11 andText:@"Copyright 2012 Attorney Biz"];
    
    [self.view addSubview:descriptionLabel];
    [self.view addSubview:copyrightLabel];
    
    //UIColor *backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"bg-splash.png"]];
    //[self.view setBackgroundColor:backgroundColor];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    
        
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}


-(UIButton*)createButtonWithFrame:(CGRect)frame andLabel:(NSString*)label
{
    UIButton *button = [[UIButton alloc] initWithFrame:frame];
    
    
    UIColor* buttonColor = [UIColor colorWithRed:95.0/255 green:113.0/255 blue:126.0/255 alpha:1.0];
    
    [button setTitle:label forState:UIControlStateNormal];
    [button setTitleColor:buttonColor forState:UIControlStateNormal];
    //[button setBackgroundImage:[UIImage imageNamed:@"button-splash.png"] forState:UIControlStateNormal];
    
    [button.titleLabel setFont:[UIFont boldSystemFontOfSize:18]];
    
    return button;
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

-(UILabel*)createLabelWithFrame:(CGRect)frame andFontSize:(float)fontSize andText:(NSString*)text
{
    UILabel* label = [[UILabel alloc] initWithFrame:frame];
    
    [label setFont:[UIFont systemFontOfSize:fontSize]];
    
    [label setTextColor:[UIColor whiteColor]];
    [label setShadowColor:[UIColor blackColor]];
    [label setShadowOffset:CGSizeMake(0, -1)];
    [label setTextAlignment:UITextAlignmentCenter];
    [label setBackgroundColor:[UIColor clearColor]];
    [label setText:text];
    
    return label;
}


@end
