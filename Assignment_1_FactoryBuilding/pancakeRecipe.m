//
//  pancakeRecipe.h
//  Assignment_1_FactoryBuilding
//
//  Created by Justin Khalil on 4/11/13.
//  Copyright (c) 2013 Justin Khalil. All rights reserved.
//

#import "pancakeRecipe.h"

@implementation pancakeRecipe

@synthesize stacks, timePerStack, pancakePan, surfaceSize;

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setSurfaceSize:1];
        [self setCookTimeMinutes:1];
        [self setStacks:1];
        [self setTimePerStack:1];
        [self setPancakePan:FLAT];
        NSLog(@"You straight up made some pancakes, son!");
    }
    return self;
};

-(int)calcCookTimeMinutes
{
    if (pancakePan == FLAT){
            [self setTimePerStack:9];
    } else if (pancakePan == ROUNDED){
            [self setTimePerStack:15];

    } else if (pancakePan == SQUARE){
            [self setTimePerStack:12];
    }
    [self setCookTimeMinutes:(stacks * timePerStack / surfaceSize)];
    NSLog(@"This thing needs %i minutes to cook", self.cookTimeMinutes);
    return self.cookTimeMinutes;
};

@end
