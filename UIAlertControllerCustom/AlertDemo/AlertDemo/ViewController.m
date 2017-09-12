//
//  ViewController.m
//  AlertDemo
//
//  Created by 石显军 on 2016/10/30.
//  Copyright © 2016年 石显军. All rights reserved.
//

#import "ViewController.h"
#import "UIViewController+Alert.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"asdd阿萨德");
    
//    UIAlertController
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Action

- (IBAction)chickAlertItem:(id)sender
{
    [self showAlertViewWithTitle:@"发现新版本" message:@"1、优化了一堆东西\n2、修复若干bug" cancelButtonTitle:@"取消" otherButtonTitles:@[@"前往更新"] handler:^(UIAlertController *alertController, UIAlertAction *action, NSInteger index) {
        switch (index) {
            case 0:
            {
                NSLog(@"取消");
            }
                break;
            case 1:
            {
                NSLog(@"前往更新");
            }
                break;
            default:
                break;
        }
    }];
}

- (IBAction)chickActionItem:(id)sender
{
    [self showActionViewWithTitle:@"选择" message:nil cancelButtonTitle:@"取消" otherButtonTitles:@[@"拍照", @"从相册获取"] handler:^(UIAlertController *alertController, UIAlertAction *action, NSInteger index) {
        switch (index) {
            case 0:
            {
                NSLog(@"取消");
            }
                break;
            case 1:
            {
                NSLog(@"拍照");
            }
                break;
            case 2:
            {
                NSLog(@"从相册获取");
            }
                break;
            default:
                break;
        }
    }];
}

@end
