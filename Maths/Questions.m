//
//  AdditionQuestion.m
//  Maths
//
//  Created by Tyler Boudreau on 2018-04-10.
//  Copyright © 2018 Tyler Boudreau. All rights reserved.
//

#import "Questions.h"

@implementation Questions

-(instancetype)init{

    if (self = [super init]){
        self.rightValue = (arc4random() % 91)+10;
        self.leftValue = (arc4random() % 91)+10;
        NSLog(@"l: %@, r: %@", @(self.leftValue), @(self.rightValue));
        _question = [NSString stringWithFormat:@"%li + %li?",(long)self.rightValue, (long)self.leftValue];
        _answer = self.rightValue + self.leftValue;
        _startTime =[NSDate date];
    }
    return self;
}
-(NSInteger)answer
{
    _endTime=[NSDate date];
    return _answer;
}

-(NSTimeInterval)answerTime{
    return [_endTime timeIntervalSinceDate:_startTime];
}
-(void)generateQuestion
{
    
}


@end
