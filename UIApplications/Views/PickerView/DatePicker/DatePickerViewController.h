//
//  DatePickerViewController.h
//  UIApplications
//
//  Created by Felipe Amorim Bastos on 09/06/20.
//  Copyright © 2020 Felipe Amorim Bastos. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DatePickerViewController : UIViewController

@property (nonatomic, weak) IBOutlet UIButton* btnDate;
@property (nonatomic, weak) IBOutlet NSLayoutConstraint* pickerBottomConstraint;
@property (nonatomic, weak) IBOutlet UIDatePicker* datePicker;

@end

NS_ASSUME_NONNULL_END
