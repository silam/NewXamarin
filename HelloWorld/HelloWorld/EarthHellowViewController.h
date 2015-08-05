//
//  EarthHellowViewController.h
//  HelloWorld
//
//  Created by Si Lam on 5/17/12.
//  Copyright (c) 2012 Fluke Thermography. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EarthHellowViewController : UIViewController
<UITextFieldDelegate>

- (IBAction)changeGreeting:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *label;

@property (copy, nonatomic) NSString *userName;

@end
