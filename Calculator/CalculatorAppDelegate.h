//
//  CalculatorAppDelegate.h
//  Calculator
//
//  Created by Jason Cooper on 6/11/11.
//  Copyright 2011 N-ask. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CalculatorViewController;

@interface CalculatorAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet CalculatorViewController *viewController;

@end
