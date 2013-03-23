//
//  SlidingView.m
//  SlideViewDemo
//
//  Created by Pawan Dhamane on 23/03/13.
//  Copyright (c) 2013 the1pawan. All rights reserved.
//

#import "SlidingView.h"

@interface SlidingView ()

@end

@implementation SlidingView

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)filterViewSlideOut
{
    [UIView animateWithDuration:1.0
                     animations:^{
                         self.view.frame = CGRectMake(480,0,160,460);
                     }
                     completion:^(BOOL finished){
                         // [_slideView removeFromSuperview];
                     }];
    
}

- (IBAction)TakeOutSliding:(id)sender {
    [self filterViewSlideOut];
}
@end
