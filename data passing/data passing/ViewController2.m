//
//  ViewController2.m
//  data passing
//
//  Created by Justin Khalil on 4/25/13.
//  Copyright (c) 2013 Justin Khalil. All rights reserved.
//

#import "ViewController2.h"
#import "ViewController.h"
#define BACKBUTTONTAG 0
#define CLOSEKEYBOARDBUTTONTAG 1
#define SAVEBUTTONTAG 2

@interface ViewController2 ()

@end

@implementation ViewController2

@synthesize eventTextField;

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
    
    
    
    ///// MASSIVE COPY AND PASTE FROM PREVIOUS VERSION
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
        [saveButton addTarget:self action:@selector(appendAndPassToVC1:) forControlEvents:UIControlEventTouchUpInside];
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
    eventTextLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 65.0f, 190.0f, 25.0f)];
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

    ///// MASSIVE COPY AND PASTE FROM PREVIOUS VERSION OVER
    secretLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 10.0f, 10.0f)];
    secretLabel.text = self.stringFromTextField1;
    
    CGRect textFieldFrame = CGRectMake(20.0f, 100.0f, 280.0f, 31.0f);
    eventTextField = [[UITextField alloc] initWithFrame:textFieldFrame];
    eventTextField.placeholder = @"event text";
    eventTextField.backgroundColor = [UIColor whiteColor];
    eventTextField.textColor = [UIColor blackColor];
    eventTextField.font = [UIFont systemFontOfSize:14.0f];
    eventTextField.borderStyle = UITextBorderStyleRoundedRect;
    eventTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    eventTextField.returnKeyType = UIReturnKeyDone;
    eventTextField.textAlignment = UITextAlignmentLeft;
    eventTextField.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    eventTextField.tag = 2;
    eventTextField.autocapitalizationType = UITextAutocapitalizationTypeNone;
    [self.view addSubview:eventTextField];
    [super viewDidLoad];
    self.eventTextField.delegate = self;
    //self.displayLabel2.text = self.stringFromTextField1;
	// Do any additional setup after loading the view.
    CGRect pickerFrame = CGRectMake(0,250,0,0);
    
    UIDatePicker *myPicker = [[UIDatePicker alloc] initWithFrame:pickerFrame];
    [myPicker addTarget:self action:@selector(pickerChanged:)               forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:myPicker];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)appendAndPassToVC1:(id)sender {
    ViewController *VC1 = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
    VC1.stringFromTextField2 = self.eventTextField.text;
    [self presentViewController:VC1 animated:YES completion:nil];
        
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    return [textField resignFirstResponder];
}
-(void)tappaTappa:(UIButton*)button{
    if (button != nil){
        if (button.tag == 0){
            [self dismissViewControllerAnimated:YES completion:NULL];
        }
        if (button.tag == SAVEBUTTONTAG){
            NSMutableString *appendedStrings;
            
             ViewController *VC1 = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
             VC1.stringFromTextField2 = self.eventTextField.text;
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
