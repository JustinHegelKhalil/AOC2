//
//  AddEventScreenViewController.h
//  GUI App
//
//  Created by Justin Khalil on 4/24/13.
//  Copyright (c) 2013 Justin Khalil. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface AddEventScreenViewController : UIViewController
{
    IBOutlet UITextView *textView;
    UIButton *backButton;
    UIButton *closeKeyboardButton;
    UILabel *eventTextLabel;
    UIButton *saveButton;
    UILabel *setTimeAndDate;
    UILabel *buttonBG;
    UIButton *addEventButton;
}
-(IBAction)onClose:(id)sender;
-(void)tappaTappa:(UIButton*)button;



@end
