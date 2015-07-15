//
//  FloatingButton.h
//  FloatingHeads
//
//  Created by Josh Endter on 7/15/15.
//  Copyright (c) 2015 Josh Endter. All rights reserved.
//

#import <UIKit/UIKit.h>

//typedef NS_ENUM(NSInteger, FloatingButtonType){
//    FloatingButtonTypeCancel,
//    FloatingButtonTypePerson
//};

@interface FloatingButton : UIButton

//@property (assign, nonatomic) FloatingButtonType floatingButtonType;

- (instancetype)initWithFrame:(CGRect)frame image:(UIImage *)image backgroundColor:(UIColor *)backgroundColor;

@end
