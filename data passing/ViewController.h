//
//  ViewController.h
//  data passing
//
//  Created by Justin Khalil on 4/25/13.
//  Copyright (c) 2013 Justin Khalil. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Stringleton.h"

@interface ViewController : UIViewController
{
    UITextField *firstTextField;
    UIButton *saveButton;
    IBOutlet UILabel *swipeRightLabel;
    UISwipeGestureRecognizer *swipeToTheRight;
    NSString *batonString;
    UITextView *textView;
    UILabel *titleLabel;
    UILabel *infoRegardingEventsLabel;
    UILabel *buttonBG;
    UIButton *addEventButton;
}

@property (strong, nonatomic)NSString *singletonString;

-(void)tappaTappa:(UIButton*)button;

@property (weak, nonatomic) IBOutlet UILabel *displayLabel1;


@end
