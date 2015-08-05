//
//  CMViewController.h
//  SimpleTable1
//
//  Created by Si Lam on 8/20/14.
//  Copyright (c) 2014 Fluke Thermography. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CMViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>


@property (nonatomic, strong) NSMutableArray *tableData; // holds the table data
@property (nonatomic) int cellCount;

@end
