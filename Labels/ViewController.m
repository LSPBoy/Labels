//
//  ViewController.m
//  Labels
//
//  Created by lsp on 2018/8/24.
//  Copyright © 2018年 lsp. All rights reserved.
//

#import "ViewController.h"
#import "TagsLabels.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
      NSArray *tagArray = @[@"商务智能",@"区块链",@"IT项目管理",@"电子商",@"管理系统",@"软技能",@"信息安全",@"变革转型",@"软技能",@"信息安全",@"变革转型",@"软技能",@"信息安全",@"变革转型",@"软技能",@"信息安全",@"变革转型",@"软技能",@"信息安全",@"变革转型",@"软技能",@"信息安全",@"变革转型jajaja",@"哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈"];
    
    TagsLabels *label = [[TagsLabels alloc] initTitleArray:tagArray fontSize:15 textColor:[UIColor redColor] bgColor:[UIColor clearColor] labelMargin:8 labelH:25 maxWidth:self.view.frame.size.width - 30 tagViewX:15 tagViewY:100];
    label.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:label];
}



@end
