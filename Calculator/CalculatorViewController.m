//
//  CalculatorViewController.m
//  Calculator
//
//  Created by Jason Cooper on 6/11/11.
//  Copyright 2011 N-ask. All rights reserved.
//

#import "CalculatorViewController.h"

@implementation CalculatorViewController

- (CalculatorModel*) model {
    if (!model) model = [[CalculatorModel alloc] init];
    
    return model;
}

- (IBAction) digitPressed:(UIButton*)sender {
    NSString* digit = [[sender titleLabel] text];
    
    if (userIsTyping) {
        [display setText:[[display text] stringByAppendingString:digit]];
    } else {
        [display setText:digit];
        userIsTyping = YES;
    }
}

- (IBAction) operationsPressed:(UIButton*)sender {
    if (userIsTyping) {
        [[self model] setOperand:[[display text] doubleValue]];
        userIsTyping = NO;
    }
    
    NSString* operation = [[sender titleLabel] text];
    double result = [[self model] performOperation:operation];
    
    [display setText:[NSString stringWithFormat:@"%g", result]];
}

//- (void)dealloc
//{
//    [super dealloc];
//}
//
//- (void)didReceiveMemoryWarning
//{
//    // Releases the view if it doesn't have a superview.
//    [super didReceiveMemoryWarning];
//    
//    // Release any cached data, images, etc that aren't in use.
//}
//
//#pragma mark - View lifecycle
//
///*
//// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
//- (void)viewDidLoad
//{
//    [super viewDidLoad];
//}
//*/
//
//- (void)viewDidUnload
//{
//    [super viewDidUnload];
//    // Release any retained subviews of the main view.
//    // e.g. self.myOutlet = nil;
//}
//
//- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
//{
//    // Return YES for supported orientations
//    return (interfaceOrientation == UIInterfaceOrientationPortrait);
//}

@end
