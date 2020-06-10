//
//  PickerViewController.h
//  UIApplications
//
//  Created by Felipe Amorim Bastos on 09/06/20.
//  Copyright © 2020 Felipe Amorim Bastos. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PickerViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>

@property (nonatomic, weak) IBOutlet UIPickerView* pickerView;
@property (nonatomic, weak) IBOutlet UILabel* lblSelectedPicker;

@end

NS_ASSUME_NONNULL_END
