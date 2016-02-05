//
//  VCViewController.m
//  PartyMaker
//
//  Created by 2 on 05.02.16.
//  Copyright © 2016 1. All rights reserved.
//

#import "VCViewController.h"
@class UIButton;
@interface VCViewController ()

@end

@implementation VCViewController
-(void) newView{
    //Create new VC
    VCViewController *newView = [VCViewController new];
    newView.view = [[UIView alloc]initWithFrame:self.view.frame];
    [newView.view setBackgroundColor:[[UIColor alloc]initWithRed:46/255.f green:49/255.f blue:56/255.f alpha:1]];
    
    newView.title = @"CREATE PARTY";
    
  
    //Create UINavigationController with root vc
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:newView];
    [nav.navigationBar setBarStyle:UIBarStyleBlack];
    //Create present UINavigationController
    [self presentViewController:nav animated:YES completion:nil];
    //Create first push second controller
    //[nav pushViewController:second animated:YES];
    //Create log controllers array
    NSLog(@"%@", nav.viewControllers);
    [nav.navigationBar setBarTintColor:[UIColor colorWithRed:68/255.f green:73/255.f blue:83/255.f alpha:1]];
    [nav.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor whiteColor]}];
    
    [newView Button];
    
   
    
}
-(void) Button{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = (CGRect){150, 150, 100, 50};
    corner//colors 1 and 2 
    [button setTitle:@"Normal" forState:UIControlStateNormal];
    [button setTitle:@"Highlighted" forState:UIControlStateHighlighted];
    [button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(onButtonClicked:)
     forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
