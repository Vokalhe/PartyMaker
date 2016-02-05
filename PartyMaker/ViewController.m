//
//  ViewController.m
//  PartyMaker
//
//  Created by 2 on 05.02.16.
//  Copyright © 2016 1. All rights reserved.
//

#import "ViewController.h"
#import "VCViewController.h"
@interface ViewController ()

@end

@implementation ViewController
-(void)viewDidAppear:(BOOL)animated{
    //Create first VC
    VCViewController *first = [VCViewController new];
    first.view = [[UIView alloc]initWithFrame:self.view.frame];
    [first.view setBackgroundColor:[[UIColor alloc]initWithRed:46/255.f green:49/255.f blue:56/255.f alpha:1]];
    first.title = @"First";
    
    UIBarButtonItem *newView = [[UIBarButtonItem alloc] initWithTitle:@"+" style:UIBarButtonItemStylePlain
                                                                  target:first action:@selector(newView)];
    first.navigationItem.rightBarButtonItem = newView;
    
    //Create UINavigationController with root vc
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:first];
     [nav.navigationBar setBarStyle:UIBarStyleBlack];
    //Create present UINavigationController
    [self presentViewController:nav animated:YES completion:nil];
    //Create first push second controller
    //[nav pushViewController:second animated:YES];
    //Create log controllers array
    NSLog(@"%@", nav.viewControllers);
   
    [nav.navigationBar setBarTintColor:[UIColor colorWithRed:68/255.f green:73/255.f blue:83/255.f alpha:1]];
    [nav.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor whiteColor]}];
    
    
    [newView  setTintColor:[UIColor whiteColor]];//+
  // [[UINavigationBar appearance] setBackgroundColor: [UIColor redColor]];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
