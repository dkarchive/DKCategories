//
//  UIViewController+DK.m
//  DealSpotr
//
//  Created by Daniel on 4/15/14.
//  Copyright (c) 2014 ZipfWorks. All rights reserved.
//

#import "UIViewController+DK.h"

@implementation UIViewController (DK)

- (BOOL)dk_isSmallScreen {
    if (self.view.frame.size.height==480) {
        return YES;
    }
    
    return NO;
}


#pragma mark - Child View Controller

- (void)dk_addChildController:(UIViewController*)childController {
    [self addChildViewController:childController];
    [childController didMoveToParentViewController:self];
    childController.view.frame = self.view.bounds;
    [self.view addSubview:childController.view];
}


- (void)dk_removeChildController:(UIViewController*)childController{
    [childController willMoveToParentViewController:nil];
    [childController.view removeFromSuperview];
    [childController removeFromParentViewController];
}


@end
