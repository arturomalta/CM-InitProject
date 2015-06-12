//
//  ViewController.m
//  CM-Init2
//
//  Created by Walter Gonzalez Domenzain on 11/06/15.
//  Copyright (c) 2015 Smartplace. All rights reserved.
//
#import "Start.h"

NSMutableArray  *maNames;
NSMutableArray  *maImgs;

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
    maNames         = [[NSMutableArray alloc] init];
    maNames         = [[NSMutableArray alloc] initWithObjects: @"Walter", @"Carlos", @"Vita", @"Carlos", @"Diego", nil];
    maImgs          = [[NSMutableArray alloc] init];
    maImgs          = [[NSMutableArray alloc] initWithObjects: @"avatars-1.png", @"avatars-2.png", @"avatars-3.png", @"avatars-4.png", @"avatars-5.png", nil];
}
/**********************************************************************************************/
#pragma mark - Button and swicth methods
/**********************************************************************************************/
- (IBAction)btn1Pressed:(id)sender {
    self.lblWelcome.text    = maNames[iIndex];
    self.imgUser.image      = [UIImage imageNamed:maImgs[iIndex]];
    iIndex++;
    self.lblWelcome.adjustsFontSizeToFitWidth   = YES;
    if (iIndex >= maNames.count) {
        iIndex = 0;
    }
}
//-------------------------------------------------------------------------------
- (IBAction)switchUserChanged:(id)sender {
    if (self.switchUser.isOn) {
        self.imgUser.hidden = NO;
    }
    else {
        self.imgUser.hidden = YES;
    }
}
@end
