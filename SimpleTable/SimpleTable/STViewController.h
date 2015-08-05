//
//  STViewController.h
//  SimpleTable
//
//  Created by Si Lam on 7/3/12.
//  Copyright (c) 2012 Fluke Thermography. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface STViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>


@property (nonatomic) int cellCount;


@property (nonatomic, strong) NSMutableArray *tableData;

@end
