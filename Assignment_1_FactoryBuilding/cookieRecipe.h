//
//  cookieRecipe.h
//  Assignment_1_FactoryBuilding
//
//  Created by Justin Khalil on 4/11/13.
//  Copyright (c) 2013 Justin Khalil. All rights reserved.
//

#import "baseRecipe.h"

@interface cookieRecipe : baseRecipe
{
    int cookieMold;
};

typedef enum {
    VALENTINES,
    STARWARS,
    HALLOWEEN
} cookieMold;

@property int servings;
@property int cookieMold;
@property int timePerServing;
@property NSString *frosting;

@end
