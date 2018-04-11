//
//  AdditionQuestion.h
//  Maths
//
//  Created by Tyler Boudreau on 2018-04-10.
//  Copyright © 2018 Tyler Boudreau. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Questions : NSObject

@property (nonatomic, strong)NSString *question;
@property (nonatomic) NSInteger answer;
@property (nonatomic, strong)NSDate *startTime;
@property (nonatomic, strong)NSDate *endTime;
@property (nonatomic)NSInteger rightValue;
@property (nonatomic)NSInteger leftValue;
-(NSTimeInterval)answerTime;
-(void)generateQuestion;

@end
