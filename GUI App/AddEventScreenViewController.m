//
//  AddEventScreenViewController.m
//  GUI App
//
//  Created by Justin Khalil on 4/24/13.
//  Copyright (c) 2013 Justin Khalil. All rights reserved.
//

#import "AddEventScreenViewController.h"
#define BACKBUTTONTAG 0
#define CLOSEKEYBOARDBUTTONTAG 1
#define SAVEBUTTONTAG 2

@interface AddEventScreenViewController ()

@end

@implementation AddEventScreenViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    self.view.backgroundColor = [UIColor grayColor];
    UITapGestureRecognizer* tapHere = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hideKeyboard)];
    [self.view addGestureRecognizer:tapHere];
    NSString *backButtonString = @"back";
    backButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (backButton != nil){
        backButton.frame = CGRectMake(10.0f, 10.0f, 90.0f, 50.0f);
        backButton.tag = SAVEBUTTONTAG;
        [backButton setTitle:backButtonString forState:UIControlStateNormal];
        [backButton addTarget:self action:@selector(tappaTappa:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:backButton];
    }
    NSString *saveButtonString = @"Save Event";
    saveButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (saveButton != nil){
        saveButton.frame = CGRectMake(220.0f, 155.0f, 90.0f, 50.0f);
        saveButton.tag = SAVEBUTTONTAG;
        [saveButton setTitle:saveButtonString forState:UIControlStateNormal];
        [saveButton addTarget:self action:@selector(tappaTappa:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:saveButton];
    }
    NSString *closeKeyboardButtonString = @"Hide Keyboard";
    closeKeyboardButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (closeKeyboardButton != nil){
        closeKeyboardButton.frame = CGRectMake(120.0f, 10.0f, 190.0f, 50.0f);
        closeKeyboardButton.tag = CLOSEKEYBOARDBUTTONTAG;
        [closeKeyboardButton setTitle:closeKeyboardButtonString forState:UIControlStateNormal];
        [closeKeyboardButton addTarget:self action:@selector(hideKeyboard) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:closeKeyboardButton];
    }
    NSString *eventTextLabelString = @"event description";
    eventTextLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 65.0f, 190.0f, 30.0f)];
    if (eventTextLabel != nil){
        eventTextLabel.text = eventTextLabelString;
        eventTextLabel.backgroundColor = [UIColor grayColor];
        eventTextLabel.textColor = [UIColor whiteColor];
        [self.view addSubview:eventTextLabel];
    }
    NSString *setTimeAndDateString = @"select time and date of this event";
    setTimeAndDate = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 210.0f, 290.0f, 30.0f)];
    if (setTimeAndDate != nil){
        setTimeAndDate.text = setTimeAndDateString;
        setTimeAndDate.backgroundColor = [UIColor grayColor];
        setTimeAndDate.textColor = [UIColor whiteColor];
        [self.view addSubview:setTimeAndDate];
    }

    [super viewDidLoad];
	// Do any additional setup after loading the view.
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)onClose:(id)sender
{
    UIButton *button = (UIButton*)sender;
    if (button != nil){
        if (button.tag == SAVEBUTTONTAG){
            [self dismissViewControllerAnimated:YES completion:NULL];
        }
        else if (button.tag == 1){
            [self hideKeyboard];
        }
        else if (button.tag == 2){
            
        }
    }
}
-(void)tappaTappa:(UIButton*)button{
    if (button != nil){
        if (button.tag == 0){
            [self dismissViewControllerAnimated:YES completion:NULL];
        }
        if (button.tag == SAVEBUTTONTAG){
            [self dismissViewControllerAnimated:YES completion:NULL];
        }
        } else if (button.tag == CLOSEKEYBOARDBUTTONTAG){
        [self hideKeyboard];
    }
}

-(void)hideKeyboard{
    [self.view endEditing:YES];
}

@end
