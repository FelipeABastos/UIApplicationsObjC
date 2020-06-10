//
//  PageControlViewController.h
//  UIApplications
//
//  Created by Felipe Amorim Bastos on 08/06/20.
//  Copyright © 2020 Felipe Amorim Bastos. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PageControlViewController : UIViewController <UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet UIPageControl* pageControl;
@property (weak, nonatomic) IBOutlet UIScrollView* scrollView;

@end

NS_ASSUME_NONNULL_END
