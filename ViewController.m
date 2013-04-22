//
//  ViewController.m
//  singletonProject
//
//  Created by Justin Khalil on 4/18/13.
//  Copyright (c) 2013 Justin Khalil. All rights reserved.
//

#import "ViewController.h"



#define PANCAKESTAG 1
#define SANDWICHTAG 2
#define COOKIESTAG 3
#define DOWN 4
#define UP 5

@interface ViewController ()

@end

@implementation ViewController

int quantityVariable = 1;

- (void)viewDidLoad
{
    
    [[settingsSingleton GetInstance] doSomething];
    NSString *pancakesButtonString = @"pancakes";
    NSString *cookiesButtonString = @"cookies";
    NSString *sandwichesButtonString = @"sandwiches";
    NSString *promptText = @"select a food";
    NSString *stepperUp = @"+";
    NSString *stepperDown = @"-";
    //int timeSum = [[pancakeRecipe init] calcCookTimeMinutes];

    promptLabel = [[UILabel alloc] initWithFrame:CGRectMake(20.0f, 20.0f, 250.0f, 20.0f)];
    promptLabel.text = promptText;
    if (promptLabel != nil){
        [self.view addSubview:promptLabel];
    }
    responseField = [[UILabel alloc] initWithFrame:CGRectMake(20.0f, 50.0f, 250.0f, 20.0f)];
    if (responseField != nil){
        [self.view addSubview:responseField];
    }
    quantityStepperDown = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (quantityStepperDown != nil){
        quantityStepperDown.frame = CGRectMake(20.0f, 70.0f, 30.0f, 30.0f);
        quantityStepperDown.tag = DOWN;
        [quantityStepperDown setTitle:stepperDown forState:UIControlStateNormal];
        [quantityStepperDown addTarget:self action:@selector(tappaTappa:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:quantityStepperDown];
    }
    quantityStepperUp = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (quantityStepperUp != nil){
        quantityStepperUp.frame = CGRectMake(50.0f, 70.0f, 30.0f, 30.0f);
        quantityStepperUp.tag = UP;
        [quantityStepperUp setTitle:stepperUp forState:UIControlStateNormal];
        [quantityStepperUp addTarget:self action:@selector(tappaTappa:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:quantityStepperUp];
    }
    stepperLabel = [[UILabel alloc] initWithFrame:CGRectMake(80.0f, 70.0f, 30.0f, 30.0f)];
    if (stepperLabel != nil){
        NSString *displayedStepperValue = [NSString stringWithFormat:@"%d", quantityVariable];
        stepperLabel.text = displayedStepperValue;
        stepperLabel.backgroundColor = [UIColor blackColor];
        stepperLabel.textColor = [UIColor whiteColor];
        [self.view addSubview:stepperLabel];
    }
    pancakesButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (pancakesButton != nil){
        pancakesButton.frame = CGRectMake(10.0f, 200.0f, 100.0f, 30.0f);
        pancakesButton.tag = PANCAKESTAG;
        [pancakesButton setTitle:pancakesButtonString forState:UIControlStateNormal];
        [pancakesButton addTarget:self action:@selector(tappaTappa:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:pancakesButton];
    }
    sandwichesButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (sandwichesButton != nil){
        sandwichesButton.frame = CGRectMake(10.0f, 250.0f, 100.0f, 30.0f);
        sandwichesButton.tag = SANDWICHTAG;
        [sandwichesButton setTitle:sandwichesButtonString forState:UIControlStateNormal];
        [sandwichesButton addTarget:self action:@selector(tappaTappa:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:sandwichesButton];
    }
    cookiesButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (cookiesButton != nil){
        cookiesButton.frame = CGRectMake(10.0f, 300.0f, 100.0f, 30.0f);
        cookiesButton.tag = COOKIESTAG;
        [cookiesButton setTitle:cookiesButtonString forState:UIControlStateNormal];
        [cookiesButton addTarget:self action:@selector(tappaTappa:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:cookiesButton];
    }
    NSString *defaultPromptText = @"Instructions display here";
    responseField.text = defaultPromptText;
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.


    UITapGestureRecognizer* tapHere = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hideKeyboard)];
    [self.view addGestureRecognizer:tapHere];
    
}
-(void)tappaTappa:(UIButton*)button{
    if (button.tag == PANCAKESTAG){
        NSString *pancakesButtonPressed = @"To make pancakes";
        promptLabel.text = pancakesButtonPressed;
        self.view.backgroundColor = [UIColor blackColor];
        [self.view addSubview:promptLabel];  
    } else if (button.tag == SANDWICHTAG){
        NSString *sandwichButtonPressed = @"To make sandwiches";
        promptLabel.text = sandwichButtonPressed;
        self.view.backgroundColor = [UIColor brownColor];
        [self.view addSubview:promptLabel];  
    } else if (button.tag == COOKIESTAG){
        NSString *cookiesButtonPressed = @"To make cookies";
        promptLabel.text = cookiesButtonPressed;
        self.view.backgroundColor = [UIColor grayColor];
        [self.view addSubview:promptLabel];  
    } else if ((button.tag == DOWN) && (quantityVariable > 0)){
        quantityVariable = (quantityVariable -= 1);
        NSString *displayedStepperValue = [NSString stringWithFormat:@"%d", quantityVariable];
        stepperLabel.text = displayedStepperValue;
        [self.view addSubview:stepperLabel]; 
    } else if ((button.tag == UP) && (quantityVariable < 10)){
        quantityVariable = (quantityVariable += 1);
        NSString *displayedStepperValue = [NSString stringWithFormat:@"%d", quantityVariable];
        stepperLabel.text = displayedStepperValue;
        [self.view addSubview:stepperLabel]; 
        }
}



-(void)hideKeyboard{
    [self.view endEditing:YES];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
