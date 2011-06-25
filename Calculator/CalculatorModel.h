//
//  CalculatorModel.h
//  Calculator
//
//  Created by Jason Cooper on 6/11/11.
//  Copyright 2011 N-ask. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface CalculatorModel : NSObject {
    double operand;
    double waitingOperand;
    NSString* waitingOperation;
}

- (void) setOperand:(double)newOperand;
- (double) performOperation:(NSString*)operation;

@end
