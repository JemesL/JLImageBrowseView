//
//  ViewController.m
//  JLImageBrowseViewDemo
//
//  Created by JL on 16/8/4.
//  Copyright © 2016年 JL. All rights reserved.
//

#import "ViewController.h"
#import "JLImageBrowseView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

//    NSArray *urlArr = @[@"https://wallpapers.wallhaven.cc/wallpapers/full/wallhaven-192457.jpg",
//                        @"https://alpha.wallhaven.cc/wallpaper/383160",
//                        @"https://alpha.wallhaven.cc/wallpaper/343298"];
    
    UIImageView *imageview =  [[UIImageView alloc] initWithFrame:CGRectMake(50, 50, 150, 150)];
    [self.view addSubview:imageview];
    imageview.userInteractionEnabled = YES;
    imageview.backgroundColor = [UIColor orangeColor];
    UITapGestureRecognizer *tag = [[UITapGestureRecognizer alloc] init];
    [tag addTarget:self action:@selector(didTapOnImageView:)];
    [imageview addGestureRecognizer:tag];
    
}


- (void)didTapOnImageView:(UIImageView *)imageView
{
    NSArray *urlArr = @[@"https://wallpapers.wallhaven.cc/wallpapers/full/wallhaven-192457.jpg",
                        @"https://alpha.wallhaven.cc/wallpaper/383160",
                        @"https://alpha.wallhaven.cc/wallpaper/343298"];
    [JLImageBrowseView showImageBrowseWithImageList:urlArr targetImageView:imageView targetImageIndex:1 placeholder:nil];
}


@end
