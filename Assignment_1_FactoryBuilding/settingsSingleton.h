//
//  settingsSingleton.h
//  singletonProject
//
//  Created by Justin Khalil on 4/18/13.
//  Copyright (c) 2013 Justin Khalil. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface settingsSingleton : NSObject
{
    int quantity;
}

+(settingsSingleton*)GetInstance;
-(int)quantityControl;
-(int)doSomething;
-(int)makePancakes:(int)requirements;
-(int)makeCookies:(int)requirements;
-(int)makeSandwiches:(int)requirements;

@end
