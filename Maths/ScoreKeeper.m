//
//  ScoreKeeper.m
//  Maths
//
//  Created by Tyler Boudreau on 2018-04-10.
//  Copyright © 2018 Tyler Boudreau. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

-(float)score
{

    return (_right /( _wrong + _right)) * 100;
}


@end
