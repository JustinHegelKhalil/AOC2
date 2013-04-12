//
//  ViewController.m
//  Assignment_1_FactoryBuilding
//
//  Created by Justin Khalil on 4/11/13.
//  Copyright (c) 2013 Justin Khalil. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //make cookie recipe
    cookieRecipe *starWarsCookies = (cookieRecipe*)[recipeFactory writeNewRecipe:COOKIERECIPE];
    [starWarsCookies setCookieMold:STARWARS];
    [starWarsCookies setServings:4];
    breakfast = [[UILabel alloc] initWithFrame:(CGRectMake(10.0f, 10.0f, 300.0f, 90.0f))];
    if (breakfast != nil){
        NSString *frostingType = @"no";
        //NSArray *starWarsCookiesIngredients = [[NSArray alloc] initWithObjects:@"flour", @"sugar", @"eggs", nil];
       // NSString *starWarsCookiesIngredients[3] = {@"flour", @"sugar", @"eggs"};
       // [starWarsCookies setIngredients:starWarsCookiesIngredients];
        NSString *starWarsCookiesInstructions = @"Bake at 375 degrees.";
        [starWarsCookies setInstructions:starWarsCookiesInstructions];
        NSString *frosting = @"cream cheese ";
        [starWarsCookies setFrosting:frosting];
        [starWarsCookies calcCookTimeMinutes];
        // where labels are created.
        breakfast.backgroundColor = [UIColor whiteColor];
        if (starWarsCookies.frosting == nil){
            frostingType = @"no";
        } else {
            frostingType = frosting;
        }
        NSMutableString *mutableBreakfastText = [NSMutableString string];
        NSString *breakfastText = (@"Star Wars Cookies");
        NSString *ingredients[5] = {@"flour", @"vanilla", @"sugar", @"eggs", @"salt"};
        NSArray *makeCompatibleArray = [NSArray arrayWithObjects:ingredients count:5];
        [mutableBreakfastText appendFormat:@"%@ can be made by combining ", breakfastText];
        for (NSString *currentThing in makeCompatibleArray){
            if ([currentThing isEqualToString:[makeCompatibleArray lastObject]]){
                [mutableBreakfastText appendFormat:@" and %@.", currentThing];
            } else {
                [mutableBreakfastText appendFormat:@"%@, ", currentThing]; 
            }
        }
        breakfast.text = mutableBreakfastText;
        breakfast.numberOfLines = 10;
        breakfast.textAlignment = NSTextAlignmentCenter;
        breakfast.textColor = [UIColor blueColor];
    }
    breakfast2 = [[UILabel alloc] initWithFrame:(CGRectMake(10.0f, 90.0f, 150.0f, 40.0f))];
    if (breakfast2 != nil){
        breakfast2.backgroundColor = [UIColor blackColor];
        breakfast2.text = [starWarsCookies instructions];
        breakfast2.textAlignment = NSTextAlignmentCenter;
        breakfast2.numberOfLines = 2;
        breakfast2.textColor = [UIColor whiteColor];
    }
    int cookingTimeForSWC = [starWarsCookies calcCookTimeMinutes];
    breakfast3 = [[UILabel alloc] initWithFrame:(CGRectMake(160.0f, 90.0f, 150.0f, 40.0f))];
    if (breakfast3 != nil){
        breakfast3.backgroundColor = [UIColor blackColor];
        breakfast3.text = [NSString stringWithFormat:@"for %d minutes", cookingTimeForSWC];
        breakfast3.textAlignment = NSTextAlignmentCenter;
        breakfast3.numberOfLines = 2;
        breakfast3.textColor = [UIColor whiteColor];
    }
    
    [self.view addSubview:breakfast];
    [self.view addSubview:breakfast2];
    [self.view addSubview:breakfast3];
    
    [super viewDidLoad];

    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];

       dinner = [[UILabel alloc] initWithFrame:(CGRectMake(160.0f, 200.0f, 150.0f, 20.0f))];
    if (dinner != nil){
        dinner.backgroundColor = [UIColor blueColor];
        dinner.text = @"Joseph Heller";
        dinner.textAlignment = NSTextAlignmentLeft;
        dinner.textColor = [UIColor greenColor];
    }
   
    //[self.view addSubview:lunch];
    //[self.view addSubview:dinner];
    
    
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
