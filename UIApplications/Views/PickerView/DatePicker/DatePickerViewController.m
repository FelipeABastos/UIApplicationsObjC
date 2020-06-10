//
//  DatePickerViewController.m
//  UIApplications
//
//  Created by Felipe Amorim Bastos on 09/06/20.
//  Copyright © 2020 Felipe Amorim Bastos. All rights reserved.
//

#import "DatePickerViewController.h"

@interface DatePickerViewController ()

@end

@implementation DatePickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)dismissView:(id)sender {
    
    [[self presentingViewController] dismissViewControllerAnimated:true completion:nil];
}

- (IBAction)dateButtonPressed:(id)sender {
    
    [UIView animateWithDuration:0.9 animations:^{
        self.pickerBottomConstraint.constant = 0;
    }];
}

- (IBAction)cancelAction:(id)sender {
    
    [UIView animateWithDuration:0.9 animations:^{
        self.pickerBottomConstraint.constant = -400;
    }];
}

- (IBAction)donePressed:(id)sender {
    
    NSDateFormatter* dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateStyle:NSDateFormatterLongStyle];
    [dateFormatter setTimeStyle:NSDateFormatterNoStyle];
    
    NSString* dateString = [dateFormatter stringFromDate:self.datePicker.date];
    
    NSString* title = [NSString stringWithFormat:@"%@", dateString];
    
    [self.btnDate setTitle:title forState:UIControlStateNormal];
    
    [UIView animateWithDuration:0.9 animations:^{
        self.pickerBottomConstraint.constant = -400;
    }];
    
    [self.view endEditing:true];
}

@end
