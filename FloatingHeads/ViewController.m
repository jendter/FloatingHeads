//
//  ViewController.m
//  FloatingHeads
//
//  Created by Josh Endter on 7/15/15.
//  Copyright (c) 2015 Josh Endter. All rights reserved.
//

#import "ViewController.h"
#import "FloatingMenuViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addButtonPressed:(id)sender {
    //NSLog(@"Pressed.");
    
    FloatingMenuViewController *floatingMenu = [[FloatingMenuViewController alloc] initFromView:self.view fromButton:sender];
    floatingMenu.delegate = self;
    [self presentViewController:floatingMenu animated:YES completion:nil];
    
}

-(void)floatingCancelButtonTapped:(FloatingButton *)button {
    NSLog(@"Cancel button tapped");
}

-(void)floatingPersonButtonTapped:(FloatingButton *)button {
    NSLog(@"Person button tapped");
}

@end
