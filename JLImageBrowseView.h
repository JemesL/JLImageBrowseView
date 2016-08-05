//
//  JLImageBrowseView.h
//  JLImageBrowseViewDemo
//
//  Created by JL on 16/8/5.
//  Copyright © 2016年 JL. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JLImageBrowseView : UIView

+ (JLImageBrowseView *)showImageBrowseWithImageList:(NSArray *)imageList targetImageView:(UIView *)targetView targetImageIndex:(NSInteger)imageIndex placeholder:(NSString *)imageName;

@end
