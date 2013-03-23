//
//  ViewController.m
//  SlideViewDemo
//
//  Created by Pawan Dhamane on 23/03/13.
//  Copyright (c) 2013 the1pawan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

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
    flag = TRUE;
    slideView = [[SlidingView alloc] initWithNibName:@"SlidingView" bundle:nil];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)filterViewSlideIn
{
    [UIView animateWithDuration:1.0
                     animations:^{
                         slideView.view.frame = CGRectMake(160,0,160,460);
                     }
                     completion:^(BOOL finished){
                         
                         
                     }];
}

-(void)filterViewSlideOut
{
    [UIView animateWithDuration:1.0
                     animations:^{
                         slideView.view.frame = CGRectMake(480,0,160,460);
                         //[second.view removeFromSuperview];
                     }
                     completion:^(BOOL finished){
//                         [slideView.view removeFromSuperview];
                     }];
    
}

- (IBAction)BringInSlideView:(id)sender {
    NSLog(@"aaa");
    if(flag == TRUE)
    {
        //[slideInButton setTitle:@"Slide Out" forState:UIControlStateNormal];
        [slideView.view setFrame:CGRectMake(480,0, 160, 460)];
        [self.view addSubview:slideView.view];
        [self filterViewSlideIn];
//        flag = FALSE;
    }
//    else
//    {
//        //[slideInButton setTitle:@"Slide In" forState:UIControlStateNormal];
//        flag = TRUE;
//        [self filterViewSlideOut];
//    }
}
@end
