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

@interface ViewController2 () {
    NSString *stringletonString;
}

@end

@implementation ViewController2
@synthesize singletonString = _singletonString;
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
    swipeLeftLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 320.0f, 50.0f)];
    if (swipeLeftLabel != nil){
        swipeLeftLabel.text = @"swipe left to close.";
        swipeLeftLabel.backgroundColor = [UIColor orangeColor];
        swipeLeftLabel.textColor = [UIColor whiteColor];
        swipeLeftLabel.userInteractionEnabled = YES;
        [self.view addSubview:swipeLeftLabel];
    }
    
    
    //NSLog(@"%@", self.stringFromTextField1);
    
    ///// MASSIVE COPY AND PASTE FROM PREVIOUS VERSION
    UITapGestureRecognizer* tapHere = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hideKeyboard)];
    [self.view addGestureRecognizer:tapHere];
    
   
    NSString *closeKeyboardButtonString = @"Hide Keyboard";
    closeKeyboardButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (closeKeyboardButton != nil){
        closeKeyboardButton.frame = CGRectMake(150.0f, 115.0f, 150.0f, 50.0f);
        closeKeyboardButton.tag = CLOSEKEYBOARDBUTTONTAG;
        [closeKeyboardButton setTitle:closeKeyboardButtonString forState:UIControlStateNormal];
        [closeKeyboardButton addTarget:self action:@selector(hideKeyboard) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:closeKeyboardButton];
    }
    NSString *eventTextLabelString = @"event description";
    eventTextLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 50.0f, 190.0f, 25.0f)];
    if (eventTextLabel != nil){
        eventTextLabel.text = eventTextLabelString;
        eventTextLabel.backgroundColor = [UIColor clearColor];
        eventTextLabel.textColor = [UIColor whiteColor];
        [self.view addSubview:eventTextLabel];
    }
    NSString *setTimeAndDateString = @"select time and date of this event";
    setTimeAndDate = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 210.0f, 290.0f, 30.0f)];
    if (setTimeAndDate != nil){
        setTimeAndDate.text = setTimeAndDateString;
        setTimeAndDate.backgroundColor = [UIColor lightGrayColor];
        setTimeAndDate.textColor = [UIColor whiteColor];
        [self.view addSubview:setTimeAndDate];
    }

    ///// MASSIVE COPY AND PASTE FROM PREVIOUS VERSION OVER
    secretLabel = [[UILabel alloc] initWithFrame:CGRectMake(-10.0f, -10.0f, 5.0f, 5.0f)];
    
    //[self.view addSubview:secretLabel];
    
    CGRect textFieldFrame = CGRectMake(20.0f, 80.0f, 280.0f, 31.0f);
    eventTextField = [[UITextField alloc] initWithFrame:textFieldFrame];
    if (eventTextField != nil){
    eventTextField.placeholder = @"event text";
    eventTextField.backgroundColor = [UIColor whiteColor];
    eventTextField.textColor = [UIColor blackColor];
    eventTextField.font = [UIFont systemFontOfSize:14.0f];
    eventTextField.borderStyle = UITextBorderStyleRoundedRect;
    eventTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    eventTextField.returnKeyType = UIReturnKeyDone;
    eventTextField.textAlignment = NSTextAlignmentLeft;
    eventTextField.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    eventTextField.tag = 2;
    eventTextField.autocapitalizationType = UITextAutocapitalizationTypeNone;
    [self.view addSubview:eventTextField];
    self.eventTextField.delegate = self;
    [super viewDidLoad];
    
    }
    
   
    Stringleton *goTime = [Stringleton secretGarden];
    NSString *tempString = goTime.batonString;
    NSLog(@"here's where I output a test version of stored singleton string");
    NSLog(@"and here is that string! %@", tempString);
	// Do any additional setup after loading the view.
    CGRect pickerFrame = CGRectMake(0,250,0,0);
    
    UIDatePicker *datePickerThing = [[UIDatePicker alloc] initWithFrame:pickerFrame];
    [datePickerThing addTarget:self action:@selector(pickerChanged:) forControlEvents:UIControlEventValueChanged];
    NSDate *todaysDate = [NSDate date];
    datePickerThing.minimumDate = todaysDate;
    datePickerThing.date = todaysDate;

    [self.view addSubview:datePickerThing];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewDidAppear:(BOOL)animated
{
    swipeToTheLeft = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swiped:)];
    swipeToTheLeft.direction = UISwipeGestureRecognizerDirectionLeft;
    [swipeLeftLabel addGestureRecognizer:swipeToTheLeft];
    [super viewDidAppear:animated];
}
-(void)swiped:(UIGestureRecognizer*)recognizer
{
    Stringleton *goTime = [Stringleton secretGarden];
    NSString *currentText = goTime.batonString;
    NSString *dateString;
    //NSString *prevList = secretLabel.text;
    NSString *lineEnder = @"\n";
    if (secretHolderOfDate == NULL){
        NSDate *todaysDate = [NSDate date];
        NSDateFormatter *dateFormatted = [[NSDateFormatter alloc]init];
        [dateFormatted setDateStyle:NSDateFormatterFullStyle];
        [dateFormatted setTimeStyle:NSDateFormatterFullStyle];
        dateString = [dateFormatted stringFromDate:todaysDate];
    }
    NSMutableString *appendedStrings = [NSString stringWithFormat:@"%@ %@ %@ %@", currentText, secretHolderOfDate, eventTextField.text, lineEnder];
    NSString *immutableString = [NSString stringWithString:appendedStrings];
    goTime.batonString = immutableString;
    
    ViewController2 *VC1 = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
    [self presentViewController:VC1 animated:YES completion:nil];
    
    
}



-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    // So I still need this thing. Hides keyboard on enter/return
    return [textField resignFirstResponder];
}
- (void)pickerChanged:(id)sender
{
    NSDateFormatter *dateFormatted = [[NSDateFormatter alloc]init];
    [dateFormatted setDateStyle:NSDateFormatterFullStyle];
    [dateFormatted setTimeStyle:NSDateFormatterFullStyle];
    NSString *dateString = [dateFormatted stringFromDate:[sender date]];
    secretHolderOfDate = dateString;
    //NSLog(@"%@", secretHolderOfDate);
    
}
-(void)tappaTappa:(UIButton*)button{
    if (button != nil){
        if (button.tag == 0){
            [self dismissViewControllerAnimated:YES completion:NULL];
        }
        if (button.tag == SAVEBUTTONTAG){
            //NSString *prevList = self.stringFromTextField1;
            //NSString *lineEnder = @"\n";
            //NSLog(@"%@", prevList);
            //NSMutableString *appendedStrings = [NSString stringWithFormat:@"%@ %@ %@ %@", prevList, secretHolderOfDate, eventTextField.text, lineEnder];
            
             
            
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
