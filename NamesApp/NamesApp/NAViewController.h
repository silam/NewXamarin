//
//  NAViewController.h
//  NamesApp
//
//  Created by Si Lam on 8/16/12.
//  Copyright (c) 2012 Si Lam. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NAViewController : UIViewController <UITableViewDelegate, 
UITableViewDataSource>
{
    
}
@property (strong, nonatomic) NSArray * tableData;

@property (nonatomic, strong) UILocalizedIndexedCollation *collation;


@property (nonatomic, strong) NSMutableArray *outerArray;
@property (nonatomic, strong) NSArray *indexTitlesArray;

@end
