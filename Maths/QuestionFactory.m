//
//  QuestionFactory.m
//  Maths
//
//  Created by Tyler Boudreau on 2018-04-11.
//  Copyright © 2018 Tyler Boudreau. All rights reserved.
//

#import "QuestionFactory.h"
#import "AdditionQuestion.h"
#import "SubtractionQuestion.h"
#import "MultiplicationQuestion.h"
#import "DivisionQuestion.h"

@implementation QuestionFactory

- (instancetype)init
{
    self = [super init];
    if (self) {
       _questionSubclassNames=@[
                                NSStringFromClass([AdditionQuestion class]),
                                NSStringFromClass([SubtractionQuestion class]),
                                NSStringFromClass([MultiplicationQuestion class]),
                                NSStringFromClass([DivisionQuestion class])];
    }
    return self;
}

-(Questions *)generateRandomQuestion{
    int random = arc4random_uniform(4);
    NSString * className = [_questionSubclassNames objectAtIndex:random];
    Class aClass = NSClassFromString(className);
    Questions* aQuestion = [[aClass alloc]init];
    if (aQuestion == nil) {
        abort();
    }
    return aQuestion;
}



@end
