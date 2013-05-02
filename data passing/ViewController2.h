//
//  ViewController2.h
//  data passing
//
//  Created by Justin Khalil on 4/25/13.
//  Copyright (c) 2013 Justin Khalil. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Stringleton.h"

@interface ViewController2 : UIViewController<UITextFieldDelegate>
{
    UITextField *eventTextField;
    IBOutlet UILabel *swipeLeftLabel;
    UISwipeGestureRecognizer *swipeToTheLeft;
    NSString *batonString;
    NSString *secretHolderOfDate;
    UILabel *secretLabel;
    UIButton *closeKeyboardButton;
    UILabel *eventTextLabel;
    UILabel *setTimeAndDate;
    UILabel *buttonBG;
    UIButton *addEventButton;
}

@property (strong, nonatomic)NSString *singletonString;
@property (weak, nonatomic) IBOutlet UILabel *displayLabel2;
-(void)tappaTappa:(UIButton*)button;
@property (strong, nonatomic)UITextField *eventTextField;
- (IBAction)appendAndPassToVC1:(id)sender;
@property (strong, nonatomic) NSString *stringFromTextField1;
@end
