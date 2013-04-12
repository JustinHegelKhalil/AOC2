//
//  RecipeFacory.h
//  Assignment_1_FactoryBuilding
//
//  Created by Justin Khalil on 4/11/13.
//  Copyright (c) 2013 Justin Khalil. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "baseRecipe.h"
#import "pancakeRecipe.h"
#import "cookieRecipe.h"
#import "sandwichRecipe.h"

@interface recipeFactory : NSObject

+(baseRecipe *)writeNewRecipe: (int)recipeType;

@end
