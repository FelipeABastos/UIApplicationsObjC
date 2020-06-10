//
//  SwitchViewController.m
//  UIApplications
//
//  Created by Felipe Amorim Bastos on 08/06/20.
//  Copyright © 2020 Felipe Amorim Bastos. All rights reserved.
//

#import "SwitchViewController.h"

@interface SwitchViewController ()

@end

@implementation SwitchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.lblStatus.textColor = UIColor.blackColor;
    self.view.backgroundColor = UIColor.whiteColor;
//    self.lblStatus.text = @"Light is ON";
    // Do any additional setup after loading the view.
}

- (IBAction)SwitchSwipped:(id)sender {
    
    if (self.swLight.isOn) {
        self.lblStatus.text = @"Light is ON";
        self.lblStatus.textColor = UIColor.blackColor;
        self.view.backgroundColor = UIColor.whiteColor;
    }else{
        self.lblStatus.text = @"Light is OFF";
        self.lblStatus.textColor = UIColor.whiteColor;
        self.view.backgroundColor = UIColor.blackColor;
    }
}


@end
