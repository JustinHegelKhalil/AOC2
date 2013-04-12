//
//  pancakeRecipe.h
//  Assignment_1_FactoryBuilding
//
//  Created by Justin Khalil on 4/11/13.
//  Copyright (c) 2013 Justin Khalil. All rights reserved.
//

#import "baseRecipe.h"

@interface pancakeRecipe : baseRecipe
{
    int pancakePan;
}

typedef enum {
    FLAT,
    ROUNDED,
    SQUARE
} pancakePan;

@property float surfaceSize;
@property int stacks;
@property int timePerStack;
@property int pancakePan;

@end
