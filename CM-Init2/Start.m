//
//  ViewController.m
//  CM-Init2
//
//  Created by Walter Gonzalez Domenzain on 11/06/15.
//  Copyright (c) 2015 Smartplace. All rights reserved.
//

#import "Start.h"

@interface Start ()

@end

@implementation Start

- (void)viewDidLoad {
    [super viewDidLoad];
    self.lblWelcome.text    = @"Que calor!";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btn1Pressed:(id)sender {
    self.lblWelcome.text                        = @"Que sed, y no de agua!";
    self.lblWelcome.adjustsFontSizeToFitWidth   = YES;
}
@end
