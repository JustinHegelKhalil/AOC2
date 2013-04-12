//
//  baseRecipe.m
//  Assignment_1_FactoryBuilding
//
//  Created by Justin Khalil on 4/11/13.
//  Copyright (c) 2013 Justin Khalil. All rights reserved.
//

#import "baseRecipe.h"

@implementation baseRecipe

// synthesize, set and get things required.
@synthesize ingredients, instructions, cookTimeMinutes;

// initializing base recipe. Emptying all values, for custom instantiation.
-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setCookTimeMinutes:0];
        [self setIngredients:nil];
        [self setInstructions:nil];
    }
    return self;
};

-(int)calcCookTimeMinutes
{
    //temporary placeholder response, no calculations...
    return cookTimeMinutes;
};
@end
