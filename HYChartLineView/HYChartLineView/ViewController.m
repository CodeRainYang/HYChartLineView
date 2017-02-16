//
//  ViewController.m
//  HYChartLineView
//
//  Created by DengHengYu on 16/11/11.
//  Copyright © 2016年 YunJing. All rights reserved.
//

#import "ViewController.h"
#import "HYChartView.h"
@interface ViewController ()
@property (nonatomic ,strong) HYChartView *chartView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.chartView];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (HYChartView *)chartView {
    if (!_chartView) {
        _chartView = [[HYChartView alloc] initWithFrame:CGRectMake(0, 150, self.view.bounds.size.width, 260) xValues:@[@"10.01",@"10.02",@"10.03",@"10.04",@"10.05",@"10.06",@"10.07"] yValues:@[@"2.0",@"10.02",@"5.7",@"19.0",@"8.7",@"10.0",@"0.0"] shadowEnabled:YES];
        [_chartView drawChart];
    }
    return _chartView;
}

@end
