//
//  TabBarViewController.m
//  DemoSegue
//
//  Created by Julien on 01/10/2014.
//  Copyright (c) 2014 Pozpom. All rights reserved.
//

#import "TabBarViewController.h"

@interface TabBarViewController ()

@end

@implementation TabBarViewController

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
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Find the appropriate controller to answer to an unwind segue
// For each child view controller
// Checks if it is a Nvaigation Controller
// If it is check its children view controllers
// Return the first view controller that answers the unwind segue
// This because I assumed the defualt behavior is just to check one level
// Based on https://developer.apple.com/library/ios/technotes/tn2298/_index.html#//apple_ref/doc/uid/DTS40013591-CH1-CCVC-SELECTING_A_CHILD_VIEW_CONTROLLER_TO_HANDLE_AN_UNWIND_ACTION
- (UIViewController *)viewControllerForUnwindSegueAction:(SEL)action fromViewController:(UIViewController *)fromViewController withSender:(id)sender {
    BOOL resChildren, res;
    for(UIViewController *controller in self.childViewControllers) {
        if ([controller isKindOfClass:[UINavigationController class]]) {
            for (UIViewController *childController in controller.childViewControllers) {
                resChildren = [childController canPerformUnwindSegueAction:action fromViewController:fromViewController withSender:sender];
                if (resChildren) {
                    return childController;
                }
            }
        }
        res = [controller canPerformUnwindSegueAction:action fromViewController:fromViewController withSender:sender];
        if (res) {
            return controller;
        }
    }
    return nil;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
