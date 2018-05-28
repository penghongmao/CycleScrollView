//
//  ViewController.m
//  cycleScrollDemo
//
//  Created by 虞振兴 on 2017/11/7.
//  Copyright © 2017年 yuzx. All rights reserved.
//

#import "ViewController.h"
#import "ZXCycleScrollView.h"

#define KScreenWidth self.view.frame.size.width
#define KScreenHeight self.view.frame.size.height

@interface ViewController () <ZXCycleScrollViewDelegate>
@property (nonatomic,strong) ZXCycleScrollView *scrollView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _scrollView = [ZXCycleScrollView  initWithFrame:CGRectMake(0, 100, KScreenWidth, 100) withMargnPadding:0 withImgWidth:KScreenWidth dataArray:nil] ;
      _scrollView.delegate = self;
    [self.view addSubview:self.scrollView];
    
    self.scrollView.otherPageControlColor = [UIColor whiteColor];
    self.scrollView.curPageControlColor = [UIColor redColor];
    
    self.scrollView.sourceDataArr = @[@"http://d.hiphotos.baidu.com/image/pic/item/b7fd5266d016092408d4a5d1dd0735fae7cd3402.jpg",@"http://h.hiphotos.baidu.com/image/h%3D300/sign=2b3e022b262eb938f36d7cf2e56085fe/d0c8a786c9177f3e18d0fdc779cf3bc79e3d5617.jpg",@"http://a.hiphotos.baidu.com/image/pic/item/b7fd5266d01609240bcda2d1dd0735fae7cd340b.jpg",@"http://h.hiphotos.baidu.com/image/pic/item/728da9773912b31b57a6e01f8c18367adab4e13a.jpg",@"http://h.hiphotos.baidu.com/image/pic/item/0d338744ebf81a4c5e4fed03de2a6059242da6fe.jpg"];
   
    self.scrollView.autoScroll = YES;
    self.scrollView.showPageControl = YES;
}

#pragma mark -- ZXCycleScrollViewDelegate
-(void)zxCycleScrollView:(ZXCycleScrollView *)scrollView didScrollToIndex:(NSInteger)index {
    NSLog(@"index------%lu",index);
}

-(void)zxCycleScrollView:(ZXCycleScrollView *)scrollView didSelectItemAtIndex:(NSInteger)index {
     NSLog(@"点击了----index------%lu",index);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
