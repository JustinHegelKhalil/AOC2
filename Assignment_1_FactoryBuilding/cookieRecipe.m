//
//  cookieRecipe.m
//  Assignment_1_FactoryBuilding
//
//  Created by Justin Khalil on 4/11/13.
//  Copyright (c) 2013 Justin Khalil. All rights reserved.
//

#import "cookieRecipe.h"

@implementation cookieRecipe

@synthesize servings, timePerServing, frosting, cookieMold;

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setCookTimeMinutes:0];
        [self setCookieMold:VALENTINES];
        [self setServings:0];
        [self setTimePerServing:2];
    }
    return self;
};

-(int)calcCookTimeMinutes
{
    NSString *cookieShape;
    if (cookieMold == STARWARS){
        cookieShape = @"Star Wars";
    } else if (cookieMold == VALENTINES){
        cookieShape = @"Valentines Day";
    } else if (cookieMold == HALLOWEEN){
        cookieShape = @"Halloween";
    }
    [self setCookTimeMinutes:(servings * timePerServing)];
    if (frosting != nil){
        int frostingTime = (2);
        [self setCookTimeMinutes:(self.cookTimeMinutes + (frostingTime))];
        NSLog(@"%@ cookies made and baked", cookieShape);
    }
    
    NSLog(@"This thing needs %i minutes to cook", self.cookTimeMinutes);
    NSLog(@"Your %@ cookies look delicious, I would like some.", cookieShape);
    return self.cookTimeMinutes;
};
-(NSMutableString*)writeRecipe
{
    NSMutableString *recipeText = [NSMutableString string];
    
    
    return recipeText;
}

@end
