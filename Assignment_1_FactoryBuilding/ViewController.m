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
    //make Star Wars cookie recipe.
    cookieRecipe *starWarsCookies = (cookieRecipe*)[recipeFactory writeNewRecipe:COOKIERECIPE];
    [starWarsCookies setCookieMold:STARWARS];
    [starWarsCookies setServings:4];
    breakfast = [[UILabel alloc] initWithFrame:(CGRectMake(10.0f, 10.0f, 300.0f, 90.0f))];
    if (breakfast != nil){
        NSString *starWarsCookiesInstructions = @"Bake at 375 degrees.";
        [starWarsCookies setInstructions:starWarsCookiesInstructions];
        NSString *frosting = @"cream cheese ";
        [starWarsCookies setFrosting:frosting];
        [starWarsCookies calcCookTimeMinutes];
        // where labels are created.
        breakfast.backgroundColor = [UIColor whiteColor];
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
        breakfast2.backgroundColor = [UIColor whiteColor];
        breakfast2.text = [starWarsCookies instructions];
        breakfast2.textAlignment = NSTextAlignmentCenter;
        breakfast2.numberOfLines = 2;
        breakfast2.textColor = [UIColor blackColor];
    }
    int cookingTimeForSWC = [starWarsCookies calcCookTimeMinutes];
    breakfast3 = [[UILabel alloc] initWithFrame:(CGRectMake(160.0f, 90.0f, 150.0f, 40.0f))];
    if (breakfast3 != nil){
        breakfast3.backgroundColor = [UIColor whiteColor];
        breakfast3.text = [NSString stringWithFormat:@"for %d minutes", cookingTimeForSWC];
        breakfast3.textAlignment = NSTextAlignmentCenter;
        breakfast3.numberOfLines = 2;
        breakfast3.textColor = [UIColor blackColor];
    }
    
    [self.view addSubview:breakfast];
    [self.view addSubview:breakfast2];
    [self.view addSubview:breakfast3];
    
    sandwichRecipe *frenchBreadSandwich = (sandwichRecipe*)[recipeFactory writeNewRecipe:SANDWICHRECIPE];
    [frenchBreadSandwich setSandwichBread:WHITE];
    [frenchBreadSandwich setToasted:TRUE];
    lunch = [[UILabel alloc] initWithFrame:(CGRectMake(10.0f, 130.0f, 300.0f, 90.0f))];
    if (breakfast != nil){
        NSString *frenchBreadSandwichInstructions = @"Combine like a boss";
        [frenchBreadSandwich setInstructions:frenchBreadSandwichInstructions];
        NSString *cheese = @"cream cheese ";
        [frenchBreadSandwich setCheeseType:cheese];
        [frenchBreadSandwich calcCookTimeMinutes];
        // where labels are created.
        lunch.backgroundColor = [UIColor whiteColor];
        NSMutableString *mutableLunchText = [NSMutableString string];
        NSString *lunchText = (@"French Bread Sandwich");
        NSString *ingredients[5] = {@"cheese", @"bread", @"lettuce", @"mayo", @"tomato slice"};
        NSArray *makeCompatibleArray = [NSArray arrayWithObjects:ingredients count:5];
        [mutableLunchText appendFormat:@"%@ can be made by gathering ", lunchText];
        for (NSString *currentThing in makeCompatibleArray){
            if ([currentThing isEqualToString:[makeCompatibleArray lastObject]]){
                [mutableLunchText appendFormat:@" and %@.", currentThing];
            } else {
                [mutableLunchText appendFormat:@"%@, ", currentThing];
            }
        }
        lunch.text = mutableLunchText;
        lunch.numberOfLines = 10;
        lunch.textAlignment = NSTextAlignmentCenter;
        lunch.textColor = [UIColor redColor];
    }
    lunch2 = [[UILabel alloc] initWithFrame:(CGRectMake(10.0f, 210.0f, 150.0f, 40.0f))];
    if (lunch2 != nil){
        lunch2.backgroundColor = [UIColor whiteColor];
        lunch2.text = [frenchBreadSandwich instructions];
        lunch2.textAlignment = NSTextAlignmentCenter;
        lunch2.numberOfLines = 2;
        lunch2.textColor = [UIColor blackColor];
    }
    int cookingTimeForSandwich = [frenchBreadSandwich calcCookTimeMinutes];
    lunch3 = [[UILabel alloc] initWithFrame:(CGRectMake(160.0f, 210.0f, 150.0f, 40.0f))];
    if (lunch3 != nil){
        lunch3.backgroundColor = [UIColor whiteColor];
        lunch3.text = [NSString stringWithFormat:@"toast for %d minutes", cookingTimeForSandwich];
        lunch3.textAlignment = NSTextAlignmentCenter;
        lunch3.numberOfLines = 2;
        lunch3.textColor = [UIColor blackColor];
    }
    
    [self.view addSubview:lunch];
    [self.view addSubview:lunch2];
    [self.view addSubview:lunch3];
    
    pancakeRecipe *pancakeDinnerRecipe = (pancakeRecipe*)[recipeFactory writeNewRecipe:PANCAKERECIPE];
    [pancakeDinnerRecipe setPancakePan:FLAT];
    dinner = [[UILabel alloc] initWithFrame:(CGRectMake(10.0f, 270.0f, 300.0f, 90.0f))];
    if (dinner != nil){
        NSString *pancakeDinnerRecipeInstructions = @"Fry at medium heat.";
        [pancakeDinnerRecipe setInstructions:pancakeDinnerRecipeInstructions];
        [pancakeDinnerRecipe setSurfaceSize:3.0];
        [pancakeDinnerRecipe setStacks:4];
        [pancakeDinnerRecipe calcCookTimeMinutes];
        // where labels are created.
        dinner.backgroundColor = [UIColor whiteColor];
        NSMutableString *mutableDinnerText = [NSMutableString string];
        NSString *dinnerText = (@"Pancake Dinner");
        NSString *ingredients[5] = {@"flour", @"cinnamon", @"sugar", @"baking powder", @"salt"};
        NSArray *makeCompatibleArray = [NSArray arrayWithObjects:ingredients count:5];
        [mutableDinnerText appendFormat:@"%@ can be made by combining ", dinnerText];
        for (NSString *currentThing in makeCompatibleArray){
            if ([currentThing isEqualToString:[makeCompatibleArray lastObject]]){
                [mutableDinnerText appendFormat:@" and %@.", currentThing];
            } else {
                [mutableDinnerText appendFormat:@"%@, ", currentThing];
            }
        }
        dinner.text = mutableDinnerText;
        dinner.numberOfLines = 10;
        dinner.textAlignment = NSTextAlignmentCenter;
        dinner.textColor = [UIColor blueColor];
    }
    dinner2 = [[UILabel alloc] initWithFrame:(CGRectMake(10.0f, 360.0f, 150.0f, 40.0f))];
    if (dinner2 != nil){
        dinner2.backgroundColor = [UIColor whiteColor];
        dinner2.text = [pancakeDinnerRecipe instructions];
        dinner2.textAlignment = NSTextAlignmentCenter;
        dinner2.numberOfLines = 2;
        dinner2.textColor = [UIColor blackColor];
    }
    int cookingTimeForPancakes = [pancakeDinnerRecipe calcCookTimeMinutes];
    dinner3 = [[UILabel alloc] initWithFrame:(CGRectMake(160.0f, 360.0f, 150.0f, 40.0f))];
    if (dinner3 != nil){
        dinner3.backgroundColor = [UIColor whiteColor];
        dinner3.text = [NSString stringWithFormat:@"for %d minutes", cookingTimeForPancakes];
        dinner3.textAlignment = NSTextAlignmentCenter;
        dinner3.numberOfLines = 2;
        dinner3.textColor = [UIColor blackColor];
    }
    
    [self.view addSubview:dinner];
    [self.view addSubview:dinner2];
    [self.view addSubview:dinner3];
    
    [super viewDidLoad];

    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];

       dinner = [[UILabel alloc] initWithFrame:(CGRectMake(200.0, 200.0f, 150.0f, 20.0f))];
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
