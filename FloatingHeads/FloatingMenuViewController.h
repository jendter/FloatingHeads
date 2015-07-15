//
//  FloatingMenuViewController.h
//  FloatingHeads
//
//  Created by Josh Endter on 7/15/15.
//  Copyright (c) 2015 Josh Endter. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FloatingMenuDelegate.h"

@class FloatingButton;

@interface FloatingMenuViewController : UIViewController

@property UIView *fromView;
@property FloatingButton *fromButton;

@property (weak, nonatomic) id<FloatingMenuDelegate> delegate;

- (instancetype)initFromView:(UIView *)fromView fromButton:(FloatingButton *)fromButton;

@end
