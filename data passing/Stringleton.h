//
//  Stringleton.h
//  testApp
//
//  Created by Justin Khalil on 5/1/13.
//  Copyright (c) 2013 Justin Khalil. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Stringleton : NSObject
{
    NSString *singletonString;
}

@property (strong, nonatomic) NSString *batonString;

+(Stringleton*)secretGarden;

@end
