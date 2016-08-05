//
//  JLImageBrowseView.m
//  JLImageBrowseViewDemo
//
//  Created by JL on 16/8/5.
//  Copyright © 2016年 JL. All rights reserved.
//

#import "JLImageBrowseView.h"

@interface JLImageBrowseView()<UICollectionViewDelegate,UICollectionViewDataSource>
@property (nonatomic, strong) NSArray *imageList;
@property (nonatomic) NSInteger index;
@property (nonatomic, strong) UIView *targetView;
@end

@implementation JLImageBrowseView

+ (JLImageBrowseView *)showImageBrowseWithImageList:(NSArray *)imageList targetImageView:(UIView *)targetView targetImageIndex:(NSInteger)imageIndex placeholder:(NSString *)imageName
{
    
    UIWindow *window = [UIApplication sharedApplication].windows.firstObject;
    
    UIView *backgroundView = [[UIView alloc] initWithFrame:window.bounds];
    backgroundView.backgroundColor = [UIColor blackColor];
    [window addSubview:backgroundView];
    
    JLImageBrowseView *imageBrowseView = [[JLImageBrowseView alloc] initWithFrame:window.bounds];
    imageBrowseView.imageList = imageList;
    imageBrowseView.index = imageIndex;
    imageBrowseView.targetView = targetView;
    
    return imageBrowseView;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupCollectionView];
    }
    
    return self;
}

- (void)setupCollectionView
{
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    UICollectionView *collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:layout];
    [collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"UICollectionViewCell"];
    
}

@end
