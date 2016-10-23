//
//  ViewController.m
//  change_map_logo
//
//  Created by ximdefangzh on 16/10/23.
//  Copyright © 2016年 ximdefangzh. All rights reserved.
//

#import "ViewController.h"
#import <MAMapKit/MAMapKit.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    MAMapView *mapView = [[MAMapView alloc] initWithFrame:self.view.bounds];
    
    ///把地图添加至view
    [self.view addSubview:mapView];
    
    mapView.showsUserLocation = YES;
    
    mapView.userTrackingMode = MAUserTrackingModeFollow;
    
    // 允许后台定位 - 保证 Background Modes 中的 Location updates 处于选中状态
    mapView.allowsBackgroundLocationUpdates = YES;
    
    // 不允许系统暂停位置更新
    mapView.pausesLocationUpdatesAutomatically = NO;

    
    UIImageView *logoImageView = [mapView valueForKey:@"logoImageView"];

    NSValue *logoSize = [mapView valueForKey:@"logoSize"];
    
    UIImage *image = [UIImage imageNamed:@"Snip20161023_2"];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    
    CGSize size = [logoSize CGSizeValue];

    imageView.bounds = CGRectMake(0, 0, size.width, size.height);
    
//    [mapView setValue:imageView forKey:@"logoImageView"];
    imageView.contentMode = UIViewContentModeScaleAspectFill;
    logoImageView.image = image;
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
