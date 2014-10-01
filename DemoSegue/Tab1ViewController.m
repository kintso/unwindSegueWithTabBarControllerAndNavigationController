//
//  Tab1ViewController.m
//  DemoSegue
//
//  Created by Julien on 01/10/2014.
//  Copyright (c) 2014 Pozpom. All rights reserved.
//

#import "Tab1ViewController.h"

@interface Tab1ViewController ()

@end

@implementation Tab1ViewController

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

- (IBAction)goToTab2ButtonTouched:(id)sender
{
    NSLog(@"About to unwind");
    [self performSegueWithIdentifier:@"goToTab2" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Do something
    NSLog(@"In Tab1ViewController@prepareForSegue");
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
