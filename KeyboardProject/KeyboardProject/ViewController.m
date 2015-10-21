//
//  ViewController.m
//  KeyboardProject
//
//  Created by Damian Esteban on 10/21/15.
//  Copyright © 2015 Damian Esteban. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // instantiate a UIToolBar
    UIToolbar *toolBar = [[UIToolbar alloc] initWithFrame: CGRectMake(0, 0, 320, 50)];
    toolBar.barStyle = UIBarStyleBlackTranslucent;
    
    UIBarButtonItem *calculateButton =
        [[UIBarButtonItem alloc] initWithTitle:@"Do Stuff"
                                         style:UIBarButtonItemStylePlain
                                        target:self action:@selector(calculateTip)];
    
    UIBarButtonItem *flexSpace =
    [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace
                                                  target:nil
                                                  action:nil];
    
    UIBarButtonItem *doneButton =
    [[UIBarButtonItem alloc] initWithTitle:@"Done"
                                     style:UIBarButtonItemStylePlain
                                    target:self
                                    action:@selector(textFieldDone)];
    
    toolBar.items = [NSArray arrayWithObjects:
                     calculateButton,
                     flexSpace,
                     doneButton,
                     nil];
    
    [toolBar sizeToFit];
    
    self.textField.inputAccessoryView = toolBar;
}

- (void)calculateTip {
    float totalAmount = [self.textField.text floatValue];
    float tip = totalAmount * 0.16;
    self.label.text = [NSString stringWithFormat:@"$%3.2f", tip];
}

- (void)textFieldDone {
    [self.textField resignFirstResponder];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    NSLog(@"You entered %@", self.textField.text);
    
    [self.textField resignFirstResponder];
    
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
