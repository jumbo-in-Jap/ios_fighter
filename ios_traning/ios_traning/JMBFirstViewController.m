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
    NSLog(@"Log");
}

@end
