//
//  CalculatorViewController.h
//  Calculator
//
//  Created by Jason Cooper on 6/11/11.
//  Copyright 2011 N-ask. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CalculatorModel.h"

@interface CalculatorViewController : UIViewController {
    IBOutlet UILabel* display;
    CalculatorModel* model;
    BOOL userIsTyping;
}

- (IBAction) digitPressed:(UIButton*)sender;
- (IBAction) operationsPressed:(UIButton*)sender;

@end
