//
//  ARVNavigationController.m
//
//  Created by Arvind on 16/11/16.
//  Copyright © 2016 AK. All rights reserved.
//

#import "ARVNavigationController.h"
#import "AVNavigationBar.h"

@interface ARVNavigationController ()

@end


@implementation ARVNavigationController


- (id)initWithRootViewController:(UIViewController *)rootViewController
{
    
    self = [super initWithNavigationBarClass:[AVNavigationBar class] toolbarClass:nil];
    if (self)
    {
        self.viewControllers = [NSArray arrayWithObjects:rootViewController, nil];
    }
    
    return self;
    
}

@end
