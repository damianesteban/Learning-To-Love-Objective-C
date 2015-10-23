//
//  MyViewController.m
//  FirstViewsIB
//
//  Created by Damian Esteban on 10/21/15.
//  Copyright © 2015 Damian Esteban. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()

@end

@implementation MyViewController

// runs ONCE when the ViewController loads the view
- (void)viewDidLoad {
    [super viewDidLoad];
    self.myLabel.text = @"Acme Explosives";
    [self.myButton setTitle:@"Press Me!" forState:UIControlStateNormal];
}

- (IBAction)buttonPressed:(id)sender {
    self.myLabel.text = @"BOOM!";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
