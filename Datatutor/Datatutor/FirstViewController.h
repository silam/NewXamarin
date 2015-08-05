//
//  FirstViewController.h
//  Datatutor
//
//  Created by Si Lam on 7/1/12.
//  Copyright (c) 2012 Fluke Thermography. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"



@interface FirstViewController : UIViewController 
<PassSecondColor>

{
    SecondViewController    *secondViewController;
    IBOutlet UITextField    *favoriteColorTextField;
    IBOutlet UILabel        *favoriteColorLabel;
    IBOutlet UILabel        *secondFavoriteColorLabel;
    
    NSString                *secondFavoriteColorString;    
}

@property (copy) NSString   *secondFavoriteColorString;


@property (nonatomic, retain) SecondViewController  *secondViewController;

@property (nonatomic, retain) IBOutlet UITextField *favoriteColorTextField;

@property (nonatomic, retain) IBOutlet UILabel *favoriteColorLabel;
@property (nonatomic, retain) IBOutlet UILabel *secondFavoriteColorLabel;
- (BOOL) textFieldShouldReturn: (UITextField *) theTextField;


@end
