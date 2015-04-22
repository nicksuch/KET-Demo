//
//  ViewController.m
//  KET Demo
//
//  Created by Nick Such on 4/21/15.
//  Copyright (c) 2015 Awesome Inc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIImageView *backgroundImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"ket-bg.jpg"]];
    [self.view insertSubview:backgroundImage atIndex:0];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)goButtonClicked:(UIButton *)sender {
    NSString *userName = self.textField.text;
    if ([userName  isEqual: @"Nick"]) {
        [self performSegueWithIdentifier:@"segueToNick" sender:nil];
    } else if ([userName isEqual:@"Bill"]) {
        [self performSegueWithIdentifier:@"segueToBill" sender:nil];
    }
}
@end
