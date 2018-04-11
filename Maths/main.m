//
//  main.m
//  Maths
//
//  Created by Tyler Boudreau on 2018-04-10.
//  Copyright © 2018 Tyler Boudreau. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        BOOL gameOn = YES;
        NSString *quit=@"quit";
        ScoreKeeper *scoreKeeping =[[ScoreKeeper alloc]init];
        
        
        
        while(gameOn)
        {
            InputHandler *newString = [[InputHandler alloc]init];
            AdditionQuestion *adding = [[AdditionQuestion alloc]init];
            

  
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
        float finalScore=[scoreKeeping score];
        NSLog(@"Your score is %f",finalScore);
        
    }
    return 0;
}
