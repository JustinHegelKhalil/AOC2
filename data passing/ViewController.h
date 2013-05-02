//
//  ViewController.h
//  data passing
//
//  Created by Justin Khalil on 4/25/13.
//  Copyright (c) 2013 Justin Khalil. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Stringleton.h"

@interface ViewController : UIViewController<UITextFieldDelegate>
{
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
@property (strong, nonatomic) IBOutlet UITextField *firstTextField;
-(void)tappaTappa:(UIButton*)button;

@property (weak, nonatomic) IBOutlet UILabel *displayLabel1;
- (IBAction)passTextToVC2:(id)sender;
@property (strong, nonatomic) NSString *stringFromTextField2;
@end
