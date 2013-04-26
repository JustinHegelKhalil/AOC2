//
//  ViewController2.h
//  data passing
//
//  Created by Justin Khalil on 4/25/13.
//  Copyright (c) 2013 Justin Khalil. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController2 : UIViewController<UITextFieldDelegate>
{
    NSString *secretHolderOfDate;
    UILabel *secretLabel;
    UIButton *backButton;
    UIButton *closeKeyboardButton;
    UILabel *eventTextLabel;
    UIButton *saveButton;
    UILabel *setTimeAndDate;
    UILabel *buttonBG;
    UIButton *addEventButton;
}

@property (weak, nonatomic) IBOutlet UILabel *displayLabel2;
-(void)tappaTappa:(UIButton*)button;
@property (strong, nonatomic) IBOutlet UITextField *eventTextField;
- (IBAction)appendAndPassToVC1:(id)sender;
@property (strong, nonatomic) NSString *stringFromTextField1;
@end