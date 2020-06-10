//
//  ProgressView.m
//  UIApplications
//
//  Created by Felipe Amorim Bastos on 08/06/20.
//  Copyright © 2020 Felipe Amorim Bastos. All rights reserved.
//

#import "ProgressView.h"

@interface ProgressView ()

@end

@implementation ProgressView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)sliderChanged:(UISlider *)sender {
    
    NSString *myString = [NSString stringWithFormat:@"%.1f", sender.value];
    self.lblValue.text = myString;
}


@end
