//
//  UIColor+JEColor.h
//  FloatingHeads
//
//  Created by Josh Endter on 7/15/15.
//  Copyright (c) 2015 Josh Endter. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (JEColor)

+(UIColor *)flatWhiteColor;
+(UIColor *)flatBlackColor;
+(UIColor *)flatBlueColor;
+(UIColor *)flatBlueDarkColor;
+(UIColor *)flatRedColor;
+(UIColor *)flatRedDarkColor;

+(UIImage *)pixelImageForColor:(UIColor *)color;

@end
