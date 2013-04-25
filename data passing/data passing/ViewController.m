//
//  ViewController.m
//  data passing
//
//  Created by Justin Khalil on 4/25/13.
//  Copyright (c) 2013 Justin Khalil. All rights reserved.
//

#import "ViewController.h"
#import "ViewController2.h"
#define ADDEVENTBUTTONTAG 0

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    /// MASSIVE COPY AND PASTE FROM PREVIOUS VERSION STARTS
    NSString *titleLabelText = @"Event Planner App #1";
    titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 320.0f, 40.0f)];
    titleLabel.text = titleLabelText;
    titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.backgroundColor = [UIColor blackColor];
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
       // [self.view addSubview:infoRegardingEventsLabel];
    }
    buttonBG = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 350.0f, 320.0f, 120.0f)];
    buttonBG.text = nil;
    buttonBG.backgroundColor = [UIColor darkGrayColor];
    buttonBG.textColor = [UIColor whiteColor];
    if (buttonBG != nil){
        [self.view addSubview:buttonBG];
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
    
    CGRect textViewFrame = CGRectMake(0.0f, 40.0f, 320.0f, 310.0f);
    textView = [[UITextView alloc] initWithFrame:textViewFrame];
    textView.returnKeyType = UIReturnKeyDone;
    textView.editable = NO;
    [self.view addSubview:textView];

    [super viewDidLoad];
    self.firstTextField.delegate = self;
    NSString *defaultText = @"events go here..";
    textView.text = defaultText;
    if (self.stringFromTextField2 != nil){
        textView.text = self.stringFromTextField2;
    }
  
   

    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)passTextToVC2:(id)sender {
    ViewController2 *VC2 = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewController2"];
    VC2.stringFromTextField1 = self.firstTextField.text;
    [self presentViewController:VC2 animated:YES completion:nil];
    
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    return [textField resignFirstResponder];
}
-(void)tappaTappa:(UIButton*)button{
    if (button != nil){
        if (button.tag == ADDEVENTBUTTONTAG){
            ViewController2 *VC2 = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewController2"];
            VC2.stringFromTextField1 = self.firstTextField.text;
            [self presentViewController:VC2 animated:YES completion:nil];

        }
    }
}

-(void)hideKeyboard{
    [self.view endEditing:YES];
}

@end
