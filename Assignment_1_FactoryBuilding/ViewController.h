//
//  ViewController.h
//  Assignment_1_FactoryBuilding
//
//  Created by Justin Khalil on 4/11/13.
//  Copyright (c) 2013 Justin Khalil. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "recipeFactory.h"
#import "settingsSingleton.h"

@interface ViewController : UIViewController
{
    UILabel *promptLabel;
    UILabel *responseField;
    UIButton *quantityStepperUp;
    UIButton *quantityStepperDown;
    UILabel *stepperLabel;
    UIButton *pancakesButton;
    UIButton *cookiesButton;
    UIButton *sandwichesButton;
    
}



@end
