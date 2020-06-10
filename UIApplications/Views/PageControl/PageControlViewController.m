//
//  PageControlViewController.m
//  UIApplications
//
//  Created by Felipe Amorim Bastos on 08/06/20.
//  Copyright © 2020 Felipe Amorim Bastos. All rights reserved.
//

#import "PageControlViewController.h"

@interface PageControlViewController ()
{
    NSArray *images;
}
@end

@implementation PageControlViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    images = @[@"0", @"1", @"2"];
    
    CGRect frame = CGRectMake(0, 0, 0, 0);
    
    self.pageControl.numberOfPages = [images count];
    
    for (int i = 0; i < [images count]; i++) {
        
        NSString *index = [images objectAtIndex:i];
        
        frame.origin.x = self.scrollView.frame.size.width * i;
        frame.size = self.scrollView.frame.size;
        
        UIImageView* imgView = [[UIImageView alloc] initWithFrame:frame];
        imgView.image = [UIImage imageNamed:index];
        [self.scrollView addSubview:imgView];
    }
    self.scrollView.delegate = self;
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:true];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        self.scrollView.contentSize = CGSizeMake(self.scrollView.frame.size.width * [self->images count], 0);
    });
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    NSInteger pageNumber = self.scrollView.contentOffset.x / self.scrollView.frame.size.width;
    
    self.pageControl.currentPage = pageNumber;
}

@end
