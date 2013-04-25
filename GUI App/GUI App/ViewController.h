//
//  ViewController.h
//  GUI App
//
//  Created by Justin Khalil on 4/24/13.
//  Copyright (c) 2013 Justin Khalil. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    UILabel *titleLabel;
    UILabel *infoRegardingEventsLabel;
    UILabel *buttonBG;
    UIButton *addEventButton;
}
-(IBAction)onClick:(id)sender;
-(void)tappaTappa:(UIButton*)button;

@end
