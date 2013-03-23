//
//  ViewController.h
//  SlideViewDemo
//
//  Created by Pawan Dhamane on 23/03/13.
//  Copyright (c) 2013 the1pawan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SlidingView.h"
@interface ViewController : UIViewController
{
    SlidingView *slideView;
    BOOL flag;

}
- (IBAction)BringInSlideView:(id)sender;


@end
