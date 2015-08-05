//
//  BNAppDelegate.h
//  BN
//
//  Created by Si Lam on 7/12/12.
//  Copyright (c) 2012 Fluke Thermography. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BNViewController;

@interface BNAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) BNViewController *viewController;

@property (nonatomic, strong) NSMutableArray *tableData;



@end
