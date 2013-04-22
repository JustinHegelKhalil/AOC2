//
//  settingsSingleton.m
//  singletonProject
//
//  Created by Justin Khalil on 4/18/13.
//  Copyright (c) 2013 Justin Khalil. All rights reserved.
//

#import "settingsSingleton.h"

@implementation settingsSingleton
// I don't know why this says 'incomplete implementation', doesn't seem to break anything. So:
// NOTE: Figure out why THAT (above) happens.
static settingsSingleton *_instance = nil;
//using singleton structure to manage a 'store' of ingredients...
// figured it made more sense than just dumping the math from the previous assignment into the singleton file.
int sandwichParts = 10;
int pancakeParts = 10;
int cookieParts = 10;

+(settingsSingleton*)GetInstance
{
    if (_instance == nil)
    {
        [[self alloc] init];
        // witchcraft, to be burned.
        return _instance;
    }
    return nil;
}

+(id)alloc
{
    _instance = [super alloc];
    // necromancy, to be drowned.
    return _instance;
}

-(id)init
{
    if (self = [super init])
    {
    // charlatanry, to be paid.
    }
    return self;
}
-(int)makePancakes:(int)requirements
{
    //why does every langauage handle mathematical syntax completely differently?
    //Got to find the syntax for x equals x-y, without subtracting y from x twice, and x from x once.
    pancakeParts = (pancakeParts - requirements);
    return requirements;
}
-(int)makeCookies:(int)requirements
{
    // this does not make sense. Online examples are broken.
    // research: calculator. To be complemented by graphics to make physics and mathematics classes easier.
    return (cookieParts = (cookieParts - requirements));
}
-(int)makeSandwiches:(int)requirements
{
    return (sandwichParts = (sandwichParts - requirements));
}

-(int)doSomething
{
    int four = 4;
    return four;
}

-(int)quantityControl:(int)inputOne :(int)inputTwo
{
    return ((int)inputOne * (int)inputTwo);
}

@end
