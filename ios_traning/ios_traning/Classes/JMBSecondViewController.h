//
//  JMBSecondViewController.h
//  ios_traning
//
//  Created by 羽田 健太郎 on 2014/04/09.
//  Copyright (c) 2014年 羽田 健太郎. All rights reserved.
//

#import <UIKit/UIKit.h>
// デリゲートを定義
@protocol jmbSecondDelegate <NSObject>
- (void)delegateMethod;
@end

@interface JMBSecondViewController : UIViewController
@property (nonatomic, assign) id<jmbSecondDelegate> delegate;
@end
