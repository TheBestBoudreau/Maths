//
//  MultiplicationQuestion.m
//  Maths
//
//  Created by Tyler Boudreau on 2018-04-11.
//  Copyright © 2018 Tyler Boudreau. All rights reserved.
//

#import "MultiplicationQuestion.h"

@implementation MultiplicationQuestion
- (instancetype)init {
    if (self = [super init]) {
        [self generateQuestion];
    }
    return self;
}
- (void)generateQuestion {
    super.question = [NSString stringWithFormat:@"%li * %li?",(long)self.rightValue, (long)self.leftValue];
   super.answer = self.rightValue * self.leftValue;
   super.startTime =[NSDate date];
}
@end
