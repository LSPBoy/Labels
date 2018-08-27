//
//  TagsLabels.m
//  Labels
//
//  Created by zhudou on 2018/8/24.
//  Copyright © 2018年 lsp. All rights reserved.
//

#import "TagsLabels.h"

@implementation TagsLabels

- (TagsLabels *)initTitleArray:(NSArray *)titleArray fontSize:(CGFloat)fontSize textColor:(UIColor *)textColor bgColor:(UIColor *)bgColor labelMargin:(CGFloat)labelMargin labelH:(CGFloat)labelH maxWidth:(CGFloat)maxWidth tagViewX:(CGFloat)tagViewX tagViewY:(CGFloat)tagViewY
{
    TagsLabels *tagView = [[TagsLabels alloc] initWithFrame:CGRectMake(tagViewX, tagViewY, maxWidth, 200)];
    
    CGFloat labelX = 0;
    CGFloat labelY = 0;
    
    for (int i = 0; i < titleArray.count; i++)
    {
        CGFloat labelW = [self title:titleArray[i] font:[UIFont systemFontOfSize:fontSize] maxSize:CGSizeMake(MAXFLOAT, fontSize + 2)].width + 8 + 8;
        CGFloat maxX = labelX + labelMargin + labelW;
        
        if (maxX > maxWidth) {
            labelY = labelY + labelH + labelMargin;
            labelX = 0;
        }
        
        UIButton *titleBtn = [[UIButton alloc] initWithFrame:CGRectMake(labelX + labelMargin, labelY, labelW, labelH)];
        titleBtn.layer.cornerRadius = 10.0;
        titleBtn.layer.borderColor = [UIColor greenColor].CGColor;
        titleBtn.layer.borderWidth = 1.0;
        titleBtn.clipsToBounds = YES;
        [titleBtn setTitle:titleArray[i] forState:UIControlStateNormal];
        titleBtn.titleLabel.font = [UIFont systemFontOfSize:fontSize];
        [titleBtn setTitleColor:textColor forState:UIControlStateNormal];
        titleBtn.backgroundColor = bgColor;
        [tagView addSubview:titleBtn];
        
        labelX = labelX + labelMargin + labelW;
        
    }
    
    tagView.frame = CGRectMake(tagViewX, tagViewY, maxWidth, labelY + labelH);
    
    return tagView;
    
}


-(CGSize)title:(NSString *)title font:(UIFont *)font maxSize:(CGSize)maxSize{
    
    NSDictionary *attr = @{NSFontAttributeName : font};
    return [title boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin| NSStringDrawingUsesFontLeading attributes:attr context:nil].size;
}

@end
