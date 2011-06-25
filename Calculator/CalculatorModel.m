//
//  CalculatorModel.m
//  Calculator
//
//  Created by Jason Cooper on 6/11/11.
//  Copyright 2011 N-ask. All rights reserved.
//

#import "CalculatorModel.h"


@implementation CalculatorModel

- (void) setOperand:(double)newOperand {
    operand = newOperand;
}

- (void) performWaitingOperation {
    if ([waitingOperation isEqual:@"+"]) {
        operand += waitingOperand;
    } else if ([waitingOperation isEqual:@"-"]) {
        operand = waitingOperand - operand;
    } else if ([waitingOperation isEqual:@"*"]) {
        operand *= waitingOperand;
    } else if ([waitingOperation isEqual:@"/"]) {
        if (operand) operand = waitingOperand / operand;
    } else if ([waitingOperation isEqual:@"pow"]) {
        operand = pow(waitingOperand, operand);
    }
}

- (double) performOperation:(NSString*)operation {
    if ([operation isEqual:@"sqrt"]) {
        operand = sqrt(operand);
    } else if ([operation isEqual:@"c"]) {
        operand = 0;
        operation = nil;
        waitingOperation = nil;
    } else {
        [self performWaitingOperation];
        waitingOperation = operation;
        waitingOperand = operand;
    }
    
    return operand;
}

@end
