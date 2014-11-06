//
//  ViewController.m
//  pirkumi
//
//  Created by Darbnīca on 06/11/14.
//  Copyright (c) 2014 Skolnīca. All rights reserved.
//

#import "ViewController.h"
#import <FacebookSDK/FacebookSDK.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    FBLoginView *loginView = [[FBLoginView alloc] init];
    loginView.center = self.view.center;
    [self.view addSubview:loginView];
    
    PFObject *testObject = [PFObject objectWithClassName:@"TestObject"];
    testObject[@"foo"] = @"bar";
    [testObject saveInBackground];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)iPayBarButtonPressed:(UIBarButtonItem *)sender {
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"iPay"
                                                        message:@"How much u pay?"
                                                       delegate:self
                                              cancelButtonTitle:@"Cancel"
                                              otherButtonTitles:@"OK!", nil];
    alertView.alertViewStyle = UIAlertViewStylePlainTextInput;
    [[alertView textFieldAtIndex:0] setKeyboardType:UIKeyboardTypeNumberPad];
    
    UITextField* textfield = [alertView textFieldAtIndex:0];
    textfield.placeholder = @"Summa";
    alertView.tag = 0;
    [alertView show];
}

-(void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    if (buttonIndex != 1) {
        NSLog(@"Cancel");
        return;
    }
    
    UITextField *textField = [alertView textFieldAtIndex:0];
    
    if (alertView.tag == 0) {
        switch (buttonIndex) {
            case 0:
                //cancel
                break;
            case 1:
                //ok
                break;
            default:
                break;
        }
    }
}
-(void)saveParametrs
{
    
}

@end
