//
//  BNViewController.h
//  BN
//
//  Created by Si Lam on 7/12/12.
//  Copyright (c) 2012 Fluke Thermography. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BNName.h"
@interface BNViewController : UIViewController


@property (nonatomic, strong) NSArray *tableData;

@property (strong, nonatomic) IBOutlet UITableView *theTableView;


@end
