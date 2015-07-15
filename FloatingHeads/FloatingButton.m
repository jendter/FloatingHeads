//
//  FloatingButton.m
//  FloatingHeads
//
//  Created by Josh Endter on 7/15/15.
//  Copyright (c) 2015 Josh Endter. All rights reserved.
//

#import "FloatingButton.h"
#import "UIColor+JEColor.h"

@implementation FloatingButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


-(void)awakeFromNib {
    [self nibSetup];
}

-(void)nibSetup {
    self.tintColor = [UIColor flatWhiteColor];
    self.backgroundColor = [UIColor flatBlueColor];
    self.layer.cornerRadius = self.frame.size.width/2;
    self.layer.masksToBounds = YES;
    [self setBackgroundImage:[UIColor pixelImageForColor:[UIColor flatBlueDarkColor]] forState:UIControlStateHighlighted];
}


- (instancetype)initWithFrame:(CGRect)frame image:(UIImage *)image backgroundColor:(UIColor *)backgroundColor
{
    self = [super init];
    if (self) {
        self.frame = frame;
        self.layer.cornerRadius = frame.size.width/2;
        self.layer.masksToBounds = YES;
        [self setImage:image forState:UIControlStateNormal];
        self.tintColor = [UIColor flatWhiteColor];
        self.backgroundColor = backgroundColor;
    }
    return self;
}

@end
