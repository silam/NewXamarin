//
//  AppDelegate.h
//  Datatutor
//
//  Created by Si Lam on 7/1/12.
//  Copyright (c) 2012 Fluke Thermography. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FirstViewController.h"


@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    UINavigationController  *navigationController;
    FirstViewController     *firstViewController;

}


//@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, retain) IBOutlet UIWindow         *window;
@property (nonatomic, retain) UINavigationController    *navigationController;
@property (nonatomic, retain) FirstViewController       *firstViewController;


@end
