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
    @synchronized(self){
        if (secretGarden == nil){
            secretGarden = [[self alloc] init];
        }
    }
    return secretGarden;
}

@end
