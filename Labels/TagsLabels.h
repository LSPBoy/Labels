//
//  TagsLabels.h
//  Labels
//
//  Created by zhudou on 2018/8/24.
//  Copyright © 2018年 lsp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TagsLabels : UIView


- (TagsLabels *)initTitleArray:(NSArray *)titleArray fontSize:(CGFloat)fontSize textColor:(UIColor *)textColor bgColor:(UIColor *)bgColor labelMargin:(CGFloat)labelMargin labelH:(CGFloat)labelH maxWidth:(CGFloat)maxWidth tagViewX:(CGFloat)tagViewX tagViewY:(CGFloat)tagViewY;

@end
