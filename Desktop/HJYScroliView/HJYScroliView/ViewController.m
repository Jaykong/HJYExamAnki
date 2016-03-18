//
//  ViewController.m
//  HJYScroliView
//
//  Created by 胡杰赟 on 16/3/18.
//  Copyright © 2016年 hjy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scroliView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGFloat width = [UIScreen mainScreen].bounds.size.width;
    CGFloat height = [[UIScreen mainScreen]bounds].size.height;
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, width, height)];
    imageView.image = [UIImage imageNamed:@"Image1"];
    [_scroliView addSubview:imageView];
    
    UIImageView *imageView2 = [[UIImageView alloc]initWithFrame:CGRectMake(width, 0, width, height)];
    imageView2.image = [UIImage imageNamed:@"Image2"];
    [_scroliView addSubview:imageView2];
    
    UIImageView *imageView3 = [[UIImageView alloc]initWithFrame:CGRectMake(2 * width, 0, width, height)];
    imageView3.image = [UIImage imageNamed:@"Image3"];
    [_scroliView addSubview:imageView3];
    
    _scroliView.contentSize = CGSizeMake(3 * width, height);

    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
