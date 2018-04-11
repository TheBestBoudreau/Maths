//
//  QuestionFactory.h
//  Maths
//
//  Created by Tyler Boudreau on 2018-04-11.
//  Copyright © 2018 Tyler Boudreau. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Questions.h"
@interface QuestionFactory : NSObject
-(Questions *)generateRandomQuestion;
@property NSArray *questionSubclassNames;
@end
