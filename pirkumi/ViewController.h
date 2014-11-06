//
//  ViewController.h
//  pirkumi
//
//  Created by Darbnīca on 06/11/14.
//  Copyright (c) 2014 Skolnīca. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UsersViewController.h"
#import <Parse/Parse.h>

//@protocol UIAlertViewDelegate <NSObject>




@interface ViewController : UIViewController



@property (strong, nonatomic) IBOutlet UILabel *bilanceLabel;
- (IBAction)iPayBarButtonPressed:(UIBarButtonItem *)sender;

@property (nonatomic) UITextField *userAlertLabel;

@end

