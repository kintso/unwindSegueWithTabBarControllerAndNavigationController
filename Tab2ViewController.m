//
//  Tab2ViewController.m
//  DemoSegue
//
//  Created by Julien on 01/10/2014.
//  Copyright (c) 2014 Pozpom. All rights reserved.
//

#import "Tab2ViewController.h"

@interface Tab2ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *tab2WelcomeLabel;

@end

@implementation Tab2ViewController

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
    NSLog(@"Tab2 loaded");
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    // Do any additional setup after loading the view.
    NSLog(@"In Tab2ViewController@viewDidAppear - Tab2 appeared");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)unwindToTab2:(UIStoryboardSegue*)sender
{
    NSLog(@"In Tab2ViewController@unwindToTab2 - I just have been unwinded");
    // The below is needed as else the View Controller won't be displayed on screen
    [self.tabBarController setSelectedIndex:1];
    [self.tab2WelcomeLabel setHidden:NO];
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
