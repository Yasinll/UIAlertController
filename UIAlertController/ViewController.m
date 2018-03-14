//
//  ViewController.m
//  UIAlertController
//
//  Created by PatrickY on 2018/3/14.
//  Copyright © 2018年 PatrickY. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btnA = [UIButton buttonWithType:UIButtonTypeSystem];
    [btnA setTitle:@"警告框" forState:UIControlStateNormal];
    btnA.frame = CGRectMake(130, 100, 100, 130);
    //按钮点击事件
    [btnA addTarget:self action:@selector(btnAClick) forControlEvents:UIControlEventTouchUpInside];
    
    
    UIButton *btnB = [UIButton buttonWithType:UIButtonTypeSystem];
    [btnB setTitle:@"底部Alert" forState:UIControlStateNormal];
    btnB.frame = CGRectMake(130, 200, 100, 130);
    [btnB addTarget:self action:@selector(btnBClick) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btnA];
    [self.view addSubview:btnB];
    
    
}


-(void)btnAClick {
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Alert" message:@"Alert Info ..." preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *actionA = [UIAlertAction actionWithTitle:@"No" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"取消");
    }];
    UIAlertAction *actionB = [UIAlertAction actionWithTitle:@"Yes" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"确定");
    }];
    
    [alertController addAction:actionA];
    [alertController addAction:actionB];
    
    [self presentViewController:alertController animated:YES completion:nil];
    
}


-(void)btnBClick {
    
    UIAlertController *alertController = [[UIAlertController alloc] init];
    
    UIAlertAction *actionA = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"取消");
    }];
    
    UIAlertAction *actionB = [UIAlertAction actionWithTitle:@"破坏性按钮" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"破坏性按钮");
    }];
    UIAlertAction *actionC = [UIAlertAction actionWithTitle:@"新浪微博" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"分享");
    }];
    
    [alertController addAction:actionA];
    [alertController addAction:actionB];
    [alertController addAction:actionC];
    
    [self presentViewController:alertController animated:YES completion:nil];
    
}

@end
