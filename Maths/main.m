//
//  main.m
//  Maths
//
//  Created by Tyler Boudreau on 2018-04-10.
//  Copyright © 2018 Tyler Boudreau. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Questions.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"MATHS!\n\n\n");
        QuestionManager *questions =[[QuestionManager alloc]init];
        BOOL gameOn = YES;
        NSString *quit=@"quit";
        ScoreKeeper *scoreKeeping =[[ScoreKeeper alloc]init];
        InputHandler *newString = [[InputHandler alloc]init];
        QuestionFactory *questionFactory=[[QuestionFactory alloc]init];
        while(gameOn)
 
        {
            [questionFactory generateRandomQuestion];
            Questions *adding = [questionFactory generateRandomQuestion];
            NSLog(@"%@",[questions timeOutput]);
            [questions.questions addObject:adding];


  
            [adding question];
            [adding answer];
        
            NSLog(@"%@",[adding question]);

            NSString *takingString=[newString parsedString];
            
            if ([takingString isEqualToString:quit]) {
                NSLog(@"Try again");
                break;
            }
            NSInteger finalString =[takingString intValue];
            if (finalString == [adding answer])
            {
                NSLog(@"Right!");
                scoreKeeping.right++;
            }
            else
            {
                NSLog(@"Wrong!");
                scoreKeeping.wrong++;
            }


            }
        int finalScore=[scoreKeeping score];
        NSLog(@"Your score is %i",finalScore);

    }

    return 0;
}
