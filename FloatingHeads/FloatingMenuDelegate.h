//
//  FloatingMenuDelegate.h
//  FloatingHeads
//
//  Created by Josh Endter on 7/15/15.
//  Copyright (c) 2015 Josh Endter. All rights reserved.
//

#import <Foundation/Foundation.h>

@class FloatingButton;

@protocol FloatingMenuDelegate <NSObject>

-(void)floatingCancelButtonTapped:(FloatingButton *)button;
-(void)floatingPersonButtonTapped:(FloatingButton *)button;


@end
