//
//  ViewController.h
//  SingleViewApp
//
//  Created by Si Lam on 7/27/12.
//  Copyright (c) 2012 Si Lam. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITabBarControllerDelegate, UITableViewDataSource>
{
    
}

@property (nonatomic, strong) NSArray * tableData;
@property (nonatomic, strong) NSArray * indexTitleArray;

@end
