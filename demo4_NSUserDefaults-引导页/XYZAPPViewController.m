//
//  XYZAPPViewController.m
//  demo4_NSUserDefaults-引导页
//
//  Created by BOBO on 15/3/17.
//  Copyright (c) 2015年 BobooO. All rights reserved.
//

#import "XYZAPPViewController.h"

@interface XYZAPPViewController ()

@end

@implementation XYZAPPViewController

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

- (IBAction)recoveryApp:(UIButton *)sender {
    NSUserDefaults *userDF = [NSUserDefaults standardUserDefaults];
    [userDF setBool:NO forKey:@"isFirst"];
    NSLog(@"应用还原成功，引导页被重置！");
    [userDF synchronize];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
