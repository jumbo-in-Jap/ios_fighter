//
//  JMBThirdViewController.m
//  ios_traning
//
//  Created by 羽田 健太郎 on 2014/05/14.
//  Copyright (c) 2014年 羽田 健太郎. All rights reserved.
//

#import "JMBThirdViewController.h"

@interface JMBThirdViewController ()

@end

@implementation JMBThirdViewController

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

//// 自作Blocks構文の使い方
//// http://cocoadays.blogspot.jp/2013/07/10blocks.html
//// https://github.com/mixi-inc/iOSTraining/wiki/8.1-Blocks
//// 
// 戻り値 (^名前) (引数)
typedef void (^MYOperatorEnumerationResultsBlock)(NSUInteger index, NSString *value);

// 引数としてBlocks構文として定義された型の変数を割り当てる
- (void)countRandomUsingBlock:(MYOperatorEnumerationResultsBlock)enumerationBlock length:(NSUInteger)length {
	srand(time(nil));
	for (int i = 0; i < length; i++) {
		NSString *value = [NSString stringWithFormat:@"%d",rand()];
		enumerationBlock(i, value);
	}
}

// 使うにはこんなかんじ
-(void)ownBlocksTest
{

    // 引数に ^戻り値 (引数) {...} の形でメソッドに定義されたブロックスの実行部を書く
    [self countRandomUsingBlock:^(NSUInteger index, NSString *value) {
        NSLog(@"%d is %@", index, value);
    } length:5];

}

//// 標準APIのBlocks構文の使い方
- (void)embededBlocksTest
{
    NSArray *array = [NSArray arrayWithObjects:
                      @"りんご", @"ごま",
                      @"まほうしょうじょまどかまぎか",
                      @"からす", @"すずめ",
                      @"めだか", @"かんり", nil];
    // 配列を操作して
    [array enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        NSLog(@"%d番目の要素は「%@」です。",idx,obj);
    }];
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
