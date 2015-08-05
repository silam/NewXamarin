//
//  GridViewCell.h
//  BizAppTutorial
//
//  Created by Si Lam on 7/21/12.
//  Copyright (c) 2012 Fluke Thermography. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AQGridView.h"

@interface GridViewCell : AQGridViewCell

@property (nonatomic, retain) UIImageView * imageView;

@property (nonatomic, retain) UILabel * captionLabel;

@end
