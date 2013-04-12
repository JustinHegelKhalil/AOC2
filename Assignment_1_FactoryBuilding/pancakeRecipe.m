//
//  pancakeRecipe.h
//  Assignment_1_FactoryBuilding
//
//  Created by Justin Khalil on 4/11/13.
//  Copyright (c) 2013 Justin Khalil. All rights reserved.
//

#import "pancakeRecipe.h"

@implementation pancakeRecipe

@synthesize stacks, timePerStack, moldTypes, panType;

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setCookTimeMinutes:0];
        [self setStacks:0];
        [self setTimePerStack:0];
        [self setPanType:FLAT];
        [self setMoldTypes:@""];
        NSLog(@"You straight up made some pancakes, son!");
    }
    return self;
};

-(int)calcCookTimeMinutes
{
    if (panType == FLAT){
        if (moldTypes != @""){
            NSLog(@"A flat pan is a good surface for making pancakes with %@ molds.", moldTypes);
            [self setTimePerStack:5];
        }
    }else if (panType == ROUNDED){
        if (moldTypes != @""){
            NSLog(@"A rounded pan is a bad surface for making pancakes with %@ molds.", moldTypes);
            [self setTimePerStack:15];
        }

    } else if (panType == SQUARE){
        if (moldTypes != @""){
            NSLog(@"A square pan is acceptable as a surface for making pancakes with %@ molds, but the corners are tricky.", moldTypes);
            [self setTimePerStack:9];
        }
    }
    [self setCookTimeMinutes:(stacks * timePerStack)];
    NSLog(@"This thing needs %i minutes to cook", self.cookTimeMinutes);
    return self.cookTimeMinutes;
};

@end
