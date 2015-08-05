//
//  SecondViewController.h
//  Datatutor
//
//  Created by Si Lam on 7/1/12.
//  Copyright (c) 2012 Fluke Thermography. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PassSecondColor <NSObject>

@required 

-(void) setSecondFavoriteColor:(NSString*) secondFavoriteColor;


@end



@interface SecondViewController : UIViewController

{
    IBOutlet UITextField *secondFavoriteColorTextField;
    IBOutlet UILabel     *favoriteColorLabel;
    IBOutlet UILabel     *secondFavoriteColorLabel; 
    NSString             *favoriteColorString;
    
    
    
    id<PassSecondColor> delegate;
    
}


@property (retain) id delegate;


@property (copy) NSString   *favoriteColorString;


@property (nonatomic, retain) IBOutlet UITextField  *secondFavoriteColorTextField;
@property (nonatomic, retain) IBOutlet UILabel      *favoriteColorLabel;
@property (nonatomic, retain) IBOutlet UILabel      *secondFavoriteColorLabel;


@end
