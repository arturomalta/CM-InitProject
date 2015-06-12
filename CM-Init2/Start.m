//
//  ViewController.m
//  CM-Init2
//
//  Created by Walter Gonzalez Domenzain on 11/06/15.
//  Copyright (c) 2015 Smartplace. All rights reserved.
//
#import "Start.h"

NSMutableArray  *maNames;

int iIndex = 0;

@interface Start ()

@end

@implementation Start
/**********************************************************************************************/
#pragma mark - Init methods
/**********************************************************************************************/
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
}
//-------------------------------------------------------------------------------
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//-------------------------------------------------------------------------------
- (void)initController {
    self.lblWelcome.text    = @"Names";
    maNames           = [[NSMutableArray alloc] init];
    maNames           = [[NSMutableArray alloc] initWithObjects: @"Walter", @"Carlos", @"Vita", @"Carlos", @"Diego", nil];
}
/**********************************************************************************************/
#pragma mark - Button methods
/**********************************************************************************************/
- (IBAction)btn1Pressed:(id)sender {
    self.lblWelcome.text                        = maNames[iIndex];
    iIndex++;
    self.lblWelcome.adjustsFontSizeToFitWidth   = YES;
}
@end
