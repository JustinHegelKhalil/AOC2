//
//  RecipeFacory.m
//  Assignment_1_FactoryBuilding
//
//  Created by Justin Khalil on 4/11/13.
//  Copyright (c) 2013 Justin Khalil. All rights reserved.
//

#import "recipeFactory.h"

@implementation recipeFactory

int pancakeIngredients = 10;

+(baseRecipe *)writeNewRecipe: (int)recipeType;
{
    if (recipeType == COOKIERECIPE) {
        return [[cookieRecipe alloc] init];
    } else if (recipeType == PANCAKERECIPE) {
        return [[pancakeRecipe alloc] init];
    } else if (recipeType == SANDWICHRECIPE) {
        return [[sandwichRecipe alloc] init];
    } else return nil;
   
}
@end
