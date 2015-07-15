//
//  FloatingMenuViewController.m
//  FloatingHeads
//
//  Created by Josh Endter on 7/15/15.
//  Copyright (c) 2015 Josh Endter. All rights reserved.
//

#import "FloatingMenuViewController.h"
#import "FloatingButton.h"
#import "UIColor+JEColor.h"

typedef NS_ENUM(NSInteger, ButtonDirection) {
    ButtonDirectionUp,
    ButtonDirectionLeft
};

@interface FloatingMenuViewController ()

@property (strong, nonatomic) UIVisualEffectView *blurredEffectView;

@property (assign, nonatomic) ButtonDirection buttonDirection;
@property (assign, nonatomic) CGFloat buttonPadding;
@property (strong, nonatomic) NSArray *buttonItems;

@end

@implementation FloatingMenuViewController

# pragma mark - Custom Initializer
- (instancetype)initFromView:(UIView *)fromView fromButton:(FloatingButton *)fromButton
{
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        _fromView = fromView;
        _fromButton = fromButton;
        
        _buttonDirection = ButtonDirectionUp;
        
        self.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
        self.modalPresentationStyle = UIModalPresentationOverCurrentContext;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // Background should be clear, to let the previous view controller show through
    self.view.backgroundColor = [UIColor clearColor];
    
    // Blur the background
    self.blurredEffectView = [[UIVisualEffectView alloc] initWithEffect:[UIBlurEffect effectWithStyle:UIBlurEffectStyleLight]];
    self.blurredEffectView.frame = self.view.bounds;
    [self.view addSubview:self.blurredEffectView];
    
    // Make a remove button
    FloatingButton *removeButton = [[FloatingButton alloc] initWithFrame:self.fromButton.frame image:[UIImage imageNamed:@"icon-close"] backgroundColor:[UIColor flatRedColor]];
    [removeButton setBackgroundImage:[UIColor pixelImageForColor:[UIColor flatRedDarkColor]] forState:UIControlStateHighlighted];
    [removeButton addTarget:self action:@selector(closeViewController:) forControlEvents:UIControlEventTouchUpInside];
    [removeButton addTarget:self.delegate action:@selector(floatingCancelButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:removeButton];
    
    // Make buttons for contacts
    // (not using a model, hardcoded for now)
    self.buttonPadding = 20.0;
    FloatingButton *previousFloatingButton = removeButton;
    for (int i=0; i < 4; i++) {
        NSString *buttonImageName = [NSString stringWithFormat:@"model-00%i", i];
        
        previousFloatingButton = [self createButtonWithImage:[UIImage imageNamed:buttonImageName] AboveButton:previousFloatingButton];
    }
    
}

-(FloatingButton *)createButtonWithImage:(UIImage *)image AboveButton:(FloatingButton *)floatingButton {
    FloatingButton *button = [[FloatingButton alloc] initWithFrame:self.fromButton.frame image:image backgroundColor:[UIColor clearColor]];
    CGPoint center = floatingButton.center;
    center.y = center.y - (floatingButton.frame.size.height + self.buttonPadding);
    button.center = center;
    [button addTarget:self.delegate action:@selector(floatingPersonButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    return button;
}

-(void)closeViewController:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}



@end
