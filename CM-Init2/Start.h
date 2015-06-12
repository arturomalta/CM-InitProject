//
//  ViewController.h
//  CM-Init2
//
//  Created by Walter Gonzalez Domenzain on 11/06/15.
//  Copyright (c) 2015 Smartplace. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Start : UIViewController
//Images
@property (strong, nonatomic) IBOutlet UIImageView *imgUser;

//Labels
@property (strong, nonatomic) IBOutlet UILabel *lblWelcome;

//Switch
@property (strong, nonatomic) IBOutlet UISwitch *switchUser;

//Actions
- (IBAction)btn1Pressed:(id)sender;
- (IBAction)switchUserChanged:(id)sender;

@end

