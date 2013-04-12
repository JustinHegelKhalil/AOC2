//
//  sandwichRecipe.m
//  Assignment_1_FactoryBuilding
//
//  Created by Justin Khalil on 4/11/13.
//  Copyright (c) 2013 Justin Khalil. All rights reserved.
//

#import "sandwichRecipe.h"

@implementation sandwichRecipe

@synthesize lengthOfLoaf, cheeseType, toasted, sandwichBread;

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setLengthOfLoaf:0];
        [self setCheeseType:@""];
        [self setToasted:FALSE];
        [self setSandwichBread:FRENCH];
        NSLog(@"You straight up made a sandwich, son!");
    }
    return self;
};

-(int)calcCookTimeMinutes
{
    if (sandwichBread == FRENCH){
        [self setLengthOfLoaf:12];
    } else if (sandwichBread == WHITE){
        [self setLengthOfLoaf:4];
    } else if (sandwichBread == WHEAT){
        [self setLengthOfLoaf:6];
    }
    [self setCookTimeMinutes:(lengthOfLoaf + sandwichBread)];
    if (toasted == TRUE){ [self setCookTimeMinutes:( + 6)];
    }
    NSLog(@"This thing will be done in %i minutes ", self.cookTimeMinutes);
    return self.cookTimeMinutes;
};

@end
