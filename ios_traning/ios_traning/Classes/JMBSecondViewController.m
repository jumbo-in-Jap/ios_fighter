//
//  JMBSecondViewController.m
//  ios_traning
//
//  Created by 羽田 健太郎 on 2014/04/09.
//  Copyright (c) 2014年 羽田 健太郎. All rights reserved.
//

#import "JMBSecondViewController.h"

@interface JMBSecondViewController ()

@end

@implementation JMBSecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)test
{
    // デリゲート先がちゃんと「sampleMethod1」というメソッドを持っているか?
    if ([self.delegate respondsToSelector:@selector(delegateMethod)]) {
        // sampleMethod1を呼び出す
        [self.delegate delegateMethod];
    }
    
}

-(IBAction)pushBtn:(id)sender
{
    [self test];
}

@end
