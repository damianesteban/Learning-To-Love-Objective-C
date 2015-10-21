//
//  ViewController.h
//  KeyboardProject
//
//  Created by Damian Esteban on 10/21/15.
//  Copyright © 2015 Damian Esteban. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

