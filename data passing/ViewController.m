//
//  ViewController.m
//  data passing
//
//  Created by Justin Khalil on 4/25/13.
//  Copyright (c) 2013 Justin Khalil. All rights reserved.
//

#import "ViewController.h"
#import "ViewController2.h"
#define SAVETAG 0
#define ADDEVENTBUTTONTAG 1

@interface ViewController ()

@end



@implementation ViewController
@synthesize firstTextField;

- (void)viewDidLoad
{
    NSUserDefaults *savedStuff = [NSUserDefaults standardUserDefaults];
    NSString *content = [savedStuff stringForKey:@"savedDates"];
    if (content.length > 0){
        NSLog(@"%@",content);
    }
  
    
    Stringleton *baton = [Stringleton secretGarden];
    NSString *tempString = baton.batonString;
    NSLog(@"THIS IS WHERE I OUTPUT THE STORED STRING FROM THE SINGLETON IN ALL CAPS SO THAT IT STANDS-OUT IN THE OUTPUT WINDOW:");
    NSLog(@"HERE!!!!!!! %@", tempString);
    /// MASSIVE COPY AND PASTE FROM PREVIOUS VERSION STARTS
    NSString *titleLabelText = @"Date Planner App #2";
    titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 320.0f, 50.0f)];
    titleLabel.text = titleLabelText;
    titleLabel.textAlignment = NSTextAlignmentLeft;
    titleLabel.backgroundColor = [UIColor orangeColor];
    titleLabel.textColor = [UIColor whiteColor];
    if (titleLabel != nil){
        [self.view addSubview:titleLabel];
    }
    NSString *infoRegardingEventsLabelText = @"Events go here...";
    infoRegardingEventsLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 40.0f, 350.0f, 40.0f)];
    infoRegardingEventsLabel.text = infoRegardingEventsLabelText;
    infoRegardingEventsLabel.backgroundColor = [UIColor grayColor];
    infoRegardingEventsLabel.textColor = [UIColor whiteColor];
    if (infoRegardingEventsLabel != nil){
       //[self.view addSubview:infoRegardingEventsLabel];
    }
    buttonBG = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 350.0f, 320.0f, 120.0f)];
    buttonBG.text = nil;
    buttonBG.backgroundColor = [UIColor darkGrayColor];
    buttonBG.textColor = [UIColor whiteColor];
    if (buttonBG != nil){
        //[self.view addSubview:buttonBG];
    }
    NSString *addEventButtonString = @"Add Event";
    
    addEventButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (addEventButton != nil){
        addEventButton.frame = CGRectMake(60.0f, 370.0f, 200.0f, 60.0f);
        addEventButton.tag = ADDEVENTBUTTONTAG;
        [addEventButton setTitle:addEventButtonString forState:UIControlStateNormal];
        [addEventButton addTarget:self action:@selector(tappaTappa:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:addEventButton];
    }

    /// MASSIVE COPY AND PASTE FROM PREVIOUS VERSION ENDED

    CGRect textViewFrame = CGRectMake(0.0f, 40.0f, 320.0f, 370.0f);
    textView = [[UITextView alloc] initWithFrame:textViewFrame];
    textView.returnKeyType = UIReturnKeyDone;
    textView.editable = NO;
    NSString *datesSaved = [[NSUserDefaults standardUserDefaults] stringForKey:@"savedDates"];
    if (datesSaved.length > 10){
        textView.text = datesSaved;
        NSLog(@"%@", datesSaved);
    } else textView.text = baton.batonString;
    
    [self.view addSubview:textView];
    if (content.length > 10){
        textView.text = content;
    }
    
    // swipe label here
    swipeRightLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 400.0f, 320.0f, 50.0f)];
    swipeRightLabel.text = @"Swipe right to add event";
    swipeRightLabel.backgroundColor = [UIColor orangeColor];
    swipeRightLabel.textColor = [UIColor whiteColor];
    swipeRightLabel.textAlignment = NSTextAlignmentRight;
    swipeRightLabel.userInteractionEnabled = YES;
    [self.view addSubview:swipeRightLabel];
    
    saveButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    if (saveButton != nil){
        saveButton.frame = CGRectMake(250.0f, 5.0f, 60.0f, 30.0f);
        saveButton.tag = SAVETAG;
        NSString *saveString = @"Save";
        [saveButton setTitle:saveString forState:UIControlStateNormal];
        [saveButton addTarget:self action:@selector(tappaTappa:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:saveButton];
    }
    [super viewDidLoad];
    self.firstTextField.delegate = self;
    NSString *defaultText = @"events go here..";
    textView.text = defaultText;
    
	// Do any additional setup after loading the view, typically from a nib.
}
-(void)viewDidAppear:(BOOL)animated
{
    swipeToTheRight = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swiped:)];
    swipeToTheRight.direction = UISwipeGestureRecognizerDirectionRight;
    [swipeRightLabel addGestureRecognizer:swipeToTheRight];
    [super viewDidAppear:animated];
    Stringleton *baton = [Stringleton secretGarden];
    NSString *tempString = baton.batonString;
    textView.text = tempString;
    NSUserDefaults *getter = [NSUserDefaults standardUserDefaults];
    NSString *gotIt = [getter stringForKey:@"savedDates"];
    if (gotIt.length > baton.batonString.length){
    textView.text = gotIt;
    } else {textView.text = baton.batonString;
    }
    //NSString *datesSaved = [[NSUserDefaults standardUserDefaults] stringForKey:@"savedDates"];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)swiped:(UIGestureRecognizer*)recognizer
{
    ViewController2 *VC2 = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewController2"];
    [self presentViewController:VC2 animated:YES completion:nil];
    Stringleton *baton = [Stringleton secretGarden];
    baton.batonString = textView.text;
}


- (IBAction)passTextToVC2:(id)sender {
    ViewController2 *VC2 = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewController2"];
    VC2.stringFromTextField1 = self.firstTextField.text;
    [self presentViewController:VC2 animated:YES completion:nil];
    NSLog(@"THIS SHOULD NEVER SHOW UP");
    
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    return [textField resignFirstResponder];
}
-(void)tappaTappa:(UIButton*)button{
    if (button != nil){
        if (button.tag == SAVETAG){
            //// PUT SAVE CONTENT STUFF HERE
            NSString *savableDates = textView.text;
            NSUserDefaults *defaultStuff = [NSUserDefaults standardUserDefaults];
            [defaultStuff setObject:savableDates forKey:@"savedDates"];
            NSUserDefaults *got = [NSUserDefaults standardUserDefaults];
            NSString *retrievedDates = [got stringForKey:@"savedDates"];
            NSLog(@"%@", retrievedDates);
            [defaultStuff synchronize];

        }
    }
}

-(void)hideKeyboard{
    [self.view endEditing:YES];
}

@end
