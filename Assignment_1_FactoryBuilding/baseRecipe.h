//
//  baseRecipe.h
//  Assignment_1_FactoryBuilding
//
//  Created by Justin Khalil on 4/11/13.
//  Copyright (c) 2013 Justin Khalil. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface baseRecipe : NSObject
{
    int recipeEnum;
}



typedef enum {
    PANCAKERECIPE,
    COOKIERECIPE,
    SANDWICHRECIPE
} recipeEnum;

@property NSArray *ingredients;
@property NSString *instructions;
@property int cookTimeMinutes;

-(id)init;

-(int)calcCookTimeMinutes;

@end
