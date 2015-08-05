//
//  GridViewController.h
//  BizAppTutorial
//
//  Created by Si Lam on 7/23/12.
//  Copyright (c) 2012 Fluke Thermography. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AQGridView.h"

@interface GridViewController : UIViewController <AQGridViewDelegate, AQGridViewDataSource>


@property (nonatomic, retain) IBOutlet AQGridView * gridView;

@property (nonatomic, retain) NSArray * services;


@end
