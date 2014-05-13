//
//  JMBNantaraViewController.m
//  ios_traning
//
//  Created by 羽田 健太郎 on 2014/04/16.
//  Copyright (c) 2014年 羽田 健太郎. All rights reserved.
//

#import "JMBNantaraViewController.h"

@interface JMBNantaraViewController ()
@property(nonatomic, strong)IBOutlet UIScrollView* scroll;
@end

@implementation JMBNantaraViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    [_scroll setContentSize:CGSizeMake(1000, 1000)];
    
    /*
    [self.view setBackgroundColor:[UIColor redColor]];
    
    // 数字
    NSInteger a = 10;
    int b = 10;
    
    // 文字列
    NSString* str = @"moji";
    
    // 配列
    // 固定長配列
    NSArray* arr = @[@"1", @"2", @"もじ"];
    // 可変長配列
    // [インスタンス メソッド];
    // おいしい = [たいやき　食べる:2 :10];
    NSMutableArray* arrM = [[NSMutableArray alloc] initWithArray:arr];

    // 関数
    UIColor* redParama = [UIColor redColor];
    [self setBackColorDaze:redParama :str];
    
    // for文 - ループ
    for (id s in arr)
    {
        NSLog(@"%@ - %@ - %d", (NSString*)s, @"str", 10);
    }
    
    // for文
    // whileとかある
    // int型のiっていうカウンターの設定; for文が回る設定; for文が一回まわるたびにふえる数
    for (int i = 0;;i++)
    {
        NSLog(@"%@ - %@ - %d", arr[i], @"str", 10);
    }
    
    // if
    if([str isEqual: @"moji"])
    {
        NSLog(@"if bun");
    
    }else
    {
        NSLog(@"else");
    }
    
    // switchもある
    // 引数（ここでいうbはひきすう)
    switch (b) {
        case 10:
            NSLog(@"10");
            break;
            
        default:
            break;
    }
    */
    
}


// 画面色を変えるメソッド
- (void)setBackColorDaze:(UIColor*)color :(NSString*)str
{
    self.view.backgroundColor = color;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)addView:(id)sender
{
    JMBSecondViewController* vc = [self.storyboard instantiateViewControllerWithIdentifier:@"app_nan"];
    //[JMBSecondViewController new];
    vc.delegate = self;
    [self.navigationController presentViewController:vc animated:YES completion:nil];
}

- (void)delegateMethod
{
    NSLog(@"delegate");
}

- (void)scrollViewDidEndDragging:(UIScrollView *)_scrollView
				  willDecelerate:(BOOL)decelerate
{
    
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)_scrollView
{

}

- (void)scrollViewDidEndZooming:(UIScrollView *)_scrollView
					   withView:(UIView *)view atScale:(float)scale {
    
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
