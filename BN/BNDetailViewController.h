//
//  BNDetailViewController.h
//  BN
//
//  Created by Si Lam on 7/13/12.
//  Copyright (c) 2012 Fluke Thermography. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BNName;





@interface BNDetailViewController : UIViewController


@property (retain, nonatomic) BNName * bnName;

@property (strong, nonatomic) IBOutlet UILabel *nameTextLabel;
@property (strong, nonatomic) IBOutlet UILabel *genderTextLabel;
@property (strong, nonatomic) IBOutlet UILabel *derivativeTextLabel;
@property (strong, nonatomic) IBOutlet UILabel *noteTextLabel;

@end
