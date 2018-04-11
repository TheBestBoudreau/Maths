//
//  QuestionManager.m
//  Maths
//
//  Created by Tyler Boudreau on 2018-04-11.
//  Copyright © 2018 Tyler Boudreau. All rights reserved.
//

#import "QuestionManager.h"
#import "Questions.h"
@implementation QuestionManager

//overriding the QuestionManager's init method
- (instancetype)init
{
    self = [super init];
    if (self) {
        // initialize this property to an empty array
        _questions=[[NSMutableArray alloc]init];
    }
    return self;
}

-(NSString *)timeOutput
{
    double averageTime=0;
    double totalTime=0;
    for (Questions *aQuestion in _questions)
{
        
        totalTime += [aQuestion answerTime];
    averageTime = totalTime / [_questions count];

    }
    return [NSString stringWithFormat:@"Total time is: %fs and average time is %f",totalTime, averageTime];
}

@end
