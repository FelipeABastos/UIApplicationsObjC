//
//  PickerViewController.m
//  UIApplications
//
//  Created by Felipe Amorim Bastos on 09/06/20.
//  Copyright © 2020 Felipe Amorim Bastos. All rights reserved.
//

#import "PickerViewController.h"
#import "DatePickerViewController.h"

@interface PickerViewController ()
{
    NSArray *devices;
}
@end

@implementation PickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    devices = @[@"",@"iPhone", @"iPad", @"iPod", @"iMac", @"Apple Watch"];
    self.pickerView.delegate = self;
    self.pickerView.dataSource = self;
}

- (IBAction)showDatePickerView:(id)sender {
    
    DatePickerViewController* dateVC = [self.storyboard instantiateViewControllerWithIdentifier:@"DatePickerView"];
    
    [self presentViewController:dateVC animated:true completion:nil];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return devices.count;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return devices[row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    self.lblSelectedPicker.text = devices[row];
}

@end
