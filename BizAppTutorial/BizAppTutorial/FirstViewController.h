//
//  FirstViewController.h
//  BizAppTutorial
//
//  Created by Si Lam on 7/21/12.
//  Copyright (c) 2012 Fluke Thermography. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FXLabel.h"


@interface FirstViewController : UIViewController


@property (nonatomic, strong) IBOutlet UILabel* logoLabel;

@property (nonatomic, strong) IBOutlet UILabel* descriptionLabel;

@property (nonatomic, strong) IBOutlet UIButton* callUsButton;

@property (nonatomic, strong) IBOutlet UIButton* directionsButton;

@property (nonatomic, strong) IBOutlet UILabel* copyrightLabel;


@end
