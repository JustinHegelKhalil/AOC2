//
//  sandwichRecipe.h
//  Assignment_1_FactoryBuilding
//
//  Created by Justin Khalil on 4/11/13.
//  Copyright (c) 2013 Justin Khalil. All rights reserved.
//

#import "baseRecipe.h"

@interface sandwichRecipe : baseRecipe
{
    int sandwichBread;
}

typedef enum {
    FRENCH,
    WHITE,
    WHEAT
} sandwichBread;

@property int lengthOfLoaf;
@property NSString *cheeseType;
@property bool timePerStack;
@property NSString *moldTypes;

@end