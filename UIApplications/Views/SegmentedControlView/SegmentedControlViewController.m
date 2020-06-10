//
//  SegmentedControlViewController.m
//  UIApplications
//
//  Created by Felipe Amorim Bastos on 08/06/20.
//  Copyright © 2020 Felipe Amorim Bastos. All rights reserved.
//

#import "SegmentedControlViewController.h"

@interface SegmentedControlViewController ()

@end

@implementation SegmentedControlViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)segmentedTapped:(id)sender {
    
    switch (self.segmentedContol.selectedSegmentIndex) {
        case 0:
            self.view.backgroundColor = UIColor.whiteColor;
            break;
            
        case 1:
            self.view.backgroundColor = UIColor.blackColor;
            break;
    }
}

@end
