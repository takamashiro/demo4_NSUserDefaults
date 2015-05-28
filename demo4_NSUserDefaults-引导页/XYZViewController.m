//
//  XYZViewController.m
//  demo4_NSUserDefaults-引导页
//
//  Created by BOBO on 15/3/17.
//  Copyright (c) 2015年 BobooO. All rights reserved.
//

#import "XYZViewController.h"

@interface XYZViewController ()

@end

@implementation XYZViewController

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
    
    for (int i = 1; i <= 4; i++) {
        NSString *imageName = [NSString stringWithFormat:@"yd0%d.png",i];
        NSLog(@"imageName%@", imageName );
        UIImageView *imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:imageName]];
        imageView.frame = CGRectMake(self.view.frame.origin.x + self.view.frame.size.width * (i - 1), self.view.frame.origin.y, self.view.frame.size.width, self.view.frame.size.height);
        imageView.userInteractionEnabled = YES;
        if (i == 4) {
            UIButton * button = [UIButton buttonWithType:UIButtonTypeSystem];
            [button setTitle:@"点击进入应用" forState:UIControlStateNormal];
            [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
            button.frame = CGRectMake(imageView.frame.size.width / 2 - 100 / 2, imageView.frame.size.height - 60, 100, 30);
            [button addTarget:self action:@selector(buttonCick:) forControlEvents:UIControlEventTouchUpInside];
            [imageView addSubview:button];
        }
        
        [self.scrollView addSubview:imageView];
    }
    self.scrollView.contentSize = CGSizeMake(self.view.frame.size.width * 4, self.view.frame.size.height);

    
}

- (void)buttonCick:(UIButton *)button {
    NSUserDefaults *userDF = [NSUserDefaults standardUserDefaults];
    
    [userDF setBool:YES forKey:@"isFirst"];
    [userDF synchronize];
    self.view.window.rootViewController = [self.view.window.rootViewController.storyboard instantiateViewControllerWithIdentifier:@"appVC"];
    NSLog(@"已经进入应用。。。。。。。。。");
    
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
