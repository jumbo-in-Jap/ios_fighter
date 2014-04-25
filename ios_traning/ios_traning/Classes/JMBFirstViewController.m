//
//  JMBFirstViewController.m
//  ios_traning
//
//  Created by 羽田 健太郎 on 2014/04/09.
//  Copyright (c) 2014年 羽田 健太郎. All rights reserved.
//

#import "JMBFirstViewController.h"

@interface JMBFirstViewController ()
@property(nonatomic, strong)IBOutlet UIButton* firstBtn;
@property(nonatomic, strong)IBOutlet UILabel* firstLbl;
@end

@implementation JMBFirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [_firstBtn addTarget:self action:@selector(isPushedAction:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)isPushedAction:(id)sender
{
    
    // push
    // UIViewController* vc = [UIViewController new];
    // [self.navigationController pushViewController:vc animated:YES];

    // modal
//    UIViewController* vc = [UIViewController new];
//    UINavigationController* nv = [[UINavigationController alloc] initWithRootViewController:vc];
//    [self.navigationController presentViewController:nv animated:YES completion:nil];
    
    // from story board
//    UIViewController* vc = [self.storyboard instantiateViewControllerWithIdentifier:@"test_view"];
//    [self.navigationController pushViewController:vc animated:YES];

    // 見た目の動的な変更
    _firstLbl.text = @"ksoakoskaoksokaokso";
    _firstLbl.backgroundColor = [UIColor redColor];
    [_firstLbl setBackgroundColor:[UIColor redColor]];
}

@end
