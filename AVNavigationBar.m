//
//  AVNavigationBar.m
//
//  Created by Arvind on 18/11/16.
//  Copyright © 2016 AK. All rights reserved.
//

#import "AVNavigationBar.h"


const CGFloat AVNavigationBarHeight = 45.f;
@implementation AVNavigationBar


-(instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    
    if (self) {
        [self initialize];
    }
    
    return self;
}


- (id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    
    if (self) {
        [self initialize];
    }
    
    return self;
}



- (void)initialize {
    
    [self setTransform:CGAffineTransformMakeTranslation(0, +(AVNavigationBarHeight))];
}


//- (void)initialize {
//    
//    [self setTitleVerticalPositionAdjustment:-(AVNavigationBarHeight) forBarMetrics:UIBarMetricsDefault];
//}

- (void)layoutSubviews {
    [super layoutSubviews];
    
//    NSArray *classNamesToReposition = @[@"UINavigationItemView", @"UINavigationButton"];
//
//    for (UIView *view in [self subviews]) {
//        
//        if ([classNamesToReposition containsObject:NSStringFromClass([view class])]) {
//            
//            CGRect frame = [view frame];
//            frame.origin.y -= AVNavigationBarHeight;
//            
//            [view setFrame:frame];
//        }
//    }
    
    
    
    
    NSArray *classNamesToReposition = @[@"_UINavigationBarBackground",@"UINavigationItemView",@"UINavigationButton"];
    
    for (UIView *view in [self subviews]) {
        
        if ([classNamesToReposition containsObject:NSStringFromClass([view class])]) {
            
            CGRect bounds = [self bounds];
            CGRect frame = [view frame];
            frame.origin.y = bounds.origin.y + AVNavigationBarHeight;
            frame.size.height = bounds.size.height - 20.f;
            
            [view setFrame:frame];
        }
    }
}



- (UIBarPosition)positionForBar:(id <UIBarPositioning>)bar {
    return UIBarPositionTopAttached;
}



@end
