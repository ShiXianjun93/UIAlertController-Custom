//
//  UIViewController+Alert.m
//  AlertDemo
//
//  Created by 石显军 on 2016/10/30.
//  Copyright © 2016年 石显军. All rights reserved.
//

#import "UIViewController+Alert.h"
#import "UIAlertControllerCustom.h"

@implementation UIViewController (Alert)

/**
 * 显示 Alert 提示信息
 *
 * @param title                     标题
 * @param message                   信息
 * @param cancelTitle               取消按钮标题
 * @param arrTitles                 其他按钮标题 数组 NSString 格式
 * @param handler                   点击回调
 * @blockParam alertController      回调 UIAlertController
 * @blockParam action               回调 UIAlertAction
 * @blockParam index                回调 点击按钮排序 0为取消按钮 大于0s时 返回根据arrTitles下标+1
 */
- (void)showAlertViewWithTitle:(NSString *)title message:(NSString *)message cancelButtonTitle:(NSString *)cancelTitle otherButtonTitles:(NSArray<NSString *> *)arrTitles handler:(void (^)(UIAlertController *alertController, UIAlertAction *action, NSInteger index))handler
{
    [UIAlertControllerCustom showAlertViewWithController:self title:title message:message cancelButtonTitle:cancelTitle otherButtonTitles:arrTitles handler:handler];
}


/**
 * 显示 Action 提示信息
 *
 * @param title                     标题
 * @param message                   信息
 * @param cancelTitle               取消按钮标题
 * @param arrTitles                 其他按钮标题 数组 NSString 格式
 * @param handler                   点击回调
 * @blockParam alertController      回调 UIAlertController
 * @blockParam action               回调 UIAlertAction
 * @blockParam index                回调 点击按钮排序 0为取消按钮 大于0s时 返回根据arrTitles下标+1
 */
- (void)showActionViewWithTitle:(NSString *)title message:(NSString *)message cancelButtonTitle:(NSString *)cancelTitle otherButtonTitles:(NSArray<NSString *> *)arrTitles handler:(void (^)(UIAlertController *alertController, UIAlertAction *action, NSInteger index))handler
{
    [UIAlertControllerCustom showActionViewWithController:self title:title message:message cancelButtonTitle:cancelTitle otherButtonTitles:arrTitles handler:handler];
}

@end
