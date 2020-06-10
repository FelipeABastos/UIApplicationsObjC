//
//  ProgressView.h
//  UIApplications
//
//  Created by Felipe Amorim Bastos on 08/06/20.
//  Copyright © 2020 Felipe Amorim Bastos. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ProgressView : UIViewController

@property (nonatomic, weak) IBOutlet UILabel* lblValue;
@property (nonatomic, weak) IBOutlet UISlider* slider;

@end

NS_ASSUME_NONNULL_END
