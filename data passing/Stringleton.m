//
//  Stringleton.m
//  testApp
//
//  Created by Justin Khalil on 5/1/13.
//  Copyright (c) 2013 Justin Khalil. All rights reserved.
//

#import "Stringleton.h"

@implementation Stringleton

@synthesize batonString = _batonString;

static Stringleton *secretGarden = nil;

+(Stringleton*)secretGarden {
    // I like the idea of an open method being referred to as a secret.
    // This is the weird class method that makes the string the same across scopes.
    @synchronized(self){
        if (secretGarden == nil){
            secretGarden = [[self alloc] init];
        }
    }
    return secretGarden;
}

@end
