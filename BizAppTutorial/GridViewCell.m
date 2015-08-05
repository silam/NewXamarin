//
//  GridViewCell.m
//  BizAppTutorial
//
//  Created by Si Lam on 7/21/12.
//  Copyright (c) 2012 Fluke Thermography. All rights reserved.
//

#import "GridViewCell.h"

@implementation GridViewCell
@synthesize imageView, captionLabel;



- (id) initWithFrame: (CGRect) frame reuseIdentifier: (NSString *) aReuseIdentifier
{
    self = [super initWithFrame: frame reuseIdentifier: aReuseIdentifier];
    if ( self)
    {
        
        UIView* mainView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 160, 123)];
        [mainView setBackgroundColor:[UIColor clearColor]];
        
        UIImageView *frameImageView = [[UIImageView alloc] initWithFrame:CGRectMake(9, 4, 142, 117)];
        
        [frameImageView setImage:[UIImage imageNamed:@"tab-mask.png"]];
        
        self.imageView = [[UIImageView alloc] initWithFrame:CGRectMake(13, 8, 135, 84)];
        
        self.captionLabel = [[UILabel alloc] initWithFrame:CGRectMake(13, 92, 127, 21)];
        
        [self.captionLabel setFont:[UIFont systemFontOfSize:14]];
        
        [mainView addSubview:self.imageView];
        [mainView addSubview:frameImageView];
        [mainView addSubview:self.captionLabel];
        
        [self.contentView addSubview:mainView];
        
    }
    
    return self;
}


@end
