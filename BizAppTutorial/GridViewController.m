//
//  GridViewController.m
//  BizAppTutorial
//
//  Created by Si Lam on 7/23/12.
//  Copyright (c) 2012 Fluke Thermography. All rights reserved.
//

#import "GridViewController.h"
#import "GridViewCell.h"

@implementation GridViewController
@synthesize gridView, services;

- (void) viewDidLoad
{
    [super viewDidLoad];
    
    self.gridView = [[AQGridView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
    self.gridView.autoresizingMask = UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight;
    self.gridView.autoresizesSubviews = YES;
    self.gridView.delegate = self;
    self.gridView.dataSource = self;
    
    UIImage * backgroundPattern = [UIImage imageNamed:@"bg-app.png"];
    
    [self.view setBackgroundColor:[UIColor colorWithPatternImage:backgroundPattern]];    
    
    [self.view addSubview:gridView];
    
    [self.gridView reloadData];
}
- (CGSize) portraitGridCellSizeForGridView: (AQGridView *) aGridView
{
    return ( CGSizeMake(160.0, 123) );
}
- (NSUInteger) numberOfItemsInGridView: (AQGridView *) aGridView
{
    return 6;
}

- (AQGridViewCell *) gridView: (AQGridView *) aGridView cellForItemAtIndex: (NSUInteger) index
{
    static NSString * PlainCellIdentifier = @"PlainCellIdentifier";
    
    
    GridViewCell * cell = (GridViewCell *)[aGridView dequeueReusableCellWithIdentifier:@"PlainCellIdentifier"];
    
    if ( cell == nil )
    {
        cell = [[GridViewCell alloc] initWithFrame: CGRectMake(0.0, 0.0, 160, 123)
                                   reuseIdentifier: PlainCellIdentifier];
    }
    
    
    [cell.imageView setImage:[UIImage imageNamed:@"service-2.jpg"]];
    [cell.captionLabel setText:@"Sample service"];
    
    return cell;
    
}


@end
