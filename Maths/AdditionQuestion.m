//
//  AdditionQuestion.m
//  Maths
//
//  Created by Tyler Boudreau on 2018-04-10.
//  Copyright © 2018 Tyler Boudreau. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion



-(instancetype)init{
    
    if (self = [super init]){
        int num1 = (arc4random() % 91)+10;
        int num2 = (arc4random() % 91)+10;
        _question = [NSString stringWithFormat:@"%i + %i?",num1, num2];
        _answer = num1 + num2;
    }
    return self;
}

@end
