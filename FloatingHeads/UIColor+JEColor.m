//
//  UIColor+JEColor.m
//  FloatingHeads
//
//  Created by Josh Endter on 7/15/15.
//  Copyright (c) 2015 Josh Endter. All rights reserved.
//

#import "UIColor+JEColor.h"

@implementation UIColor (JEColor)

+(UIImage *)pixelImageForColor:(UIColor *)color {
    CGSize imageSize = CGSizeMake(1, 1);
    UIColor *fillColor = color;
    UIGraphicsBeginImageContextWithOptions(imageSize, YES, 0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    [fillColor setFill];
    CGContextFillRect(context, CGRectMake(0, 0, imageSize.width, imageSize.height));
    UIImage *pixelImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
        
    return pixelImage;
}

+(UIColor *)flatWhiteColor {
    return [UIColor colorWithRed:0.9274 green:0.9436 blue:0.95 alpha:1.0];
}

+(UIColor *)flatBlackColor {
    return [UIColor colorWithRed:0.1674 green:0.1674 blue:0.1674 alpha:1.0];
}

+(UIColor *)flatBlueColor {
    return [UIColor colorWithRed:0.3132 green:0.3974 blue:0.6365 alpha:1.0];
}

+(UIColor *)flatBlueDarkColor {
    return [UIColor colorWithRed:0.1600 green:0.2100 blue:0.3200 alpha:1.0];
}

+(UIColor *)flatRedColor{
    return [UIColor colorWithRed:0.9115 green:0.2994 blue:0.2335 alpha:1.0];
}

+(UIColor *)flatRedDarkColor{
    return [UIColor colorWithRed:0.4800 green:0.1600 blue:0.1300 alpha:1.0];
}

@end
