//
//  ViewController.m
//  GUI App
//
//  Created by Justin Khalil on 4/24/13.
//  Copyright (c) 2013 Justin Khalil. All rights reserved.
//

#import "ViewController.h"
#import "AddEventScreenViewController.h"

#define ADDEVENTBUTTONTAG 0

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    self.view.backgroundColor = [UIColor grayColor];
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
        [self.view addSubview:infoRegardingEventsLabel];
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
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
-(void)tappaTappa:(UIButton*)button{
    if (button.tag == ADDEVENTBUTTONTAG){
        AddEventScreenViewController *viewController = [[AddEventScreenViewController alloc] initWithNibName:@"AddEventScreen" bundle:nil];
        if(viewController != nil){
            [self presentViewController:viewController animated:YES completion:NULL];
        }
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)onClick:(id)sender
{
    AddEventScreenViewController *viewController = [[AddEventScreenViewController alloc] initWithNibName:@"AddEventScreen" bundle:nil];
    if(viewController != nil){
        [self presentViewController:viewController animated:YES completion:NULL];
    }
}

@end
