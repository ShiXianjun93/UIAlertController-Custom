//
//  UIAlertController+Custom.m
//  AlertDemo
//
//  Created by 石显军 on 2016/11/7.
//  Copyright © 2016年 石显军. All rights reserved.
//

#import "UIAlertController+Custom.h"

@implementation UIAlertController (Custom)

/**
 * 显示 提示信息
 *
 * @param controller                显示的controller
 * @param preferredStyle            提示信息格式
 * @param title                     标题
 * @param message                   信息
 * @param cancelTitle               取消按钮标题
 * @param arrTitles                 其他按钮标题 数组 NSString 格式
 * @param handler                   点击回调
 * @blockParam alertController      回调 UIAlertController
 * @blockParam action               回调 UIAlertAction
 * @blockParam index                回调 点击按钮排序 0为取消按钮 大于0s时 返回根据arrTitles下标+1
 */
+ (void)showPromptViewWithController:(UIViewController *)controller preferredStyle:(UIAlertControllerStyle)preferredStyle title:(NSString *)title message:(NSString *)message cancelButtonTitle:(NSString *)cancelTitle otherButtonTitles:(NSArray<NSString *> *)arrTitles handler:(void (^)(UIAlertController *alertController, UIAlertAction *action, NSInteger index))handler
{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:preferredStyle];
    if (cancelTitle) {
        [alertController addAction:[UIAlertAction actionWithTitle:cancelTitle style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            if (handler) {
                handler(alertController, action, 0);
            }
        }]];
    }
    if (arrTitles){
        
        for (NSInteger i = 0; i < arrTitles.count; i++) {
            NSString *title = arrTitles[i];
            [alertController addAction:[UIAlertAction actionWithTitle:title style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
                if (handler) {
                    handler(alertController, action, i + 1);
                }
            }]];
        }
    }
    
    dispatch_async(dispatch_get_main_queue(), ^{
        [controller presentViewController:alertController animated:YES completion:nil];
    });
}

/**
 * 显示 Alert 提示信息
 *
 * @param controller                显示的controller
 * @param title                     标题
 * @param message                   信息
 * @param cancelTitle               取消按钮标题
 * @param arrTitles                 其他按钮标题 数组 NSString 格式
 * @param handler                   点击回调
 * @blockParam alertController      回调 UIAlertController
 * @blockParam action               回调 UIAlertAction
 * @blockParam index                回调 点击按钮排序 0为取消按钮 大于0s时 返回根据arrTitles下标+1
 */
+ (void)showAlertViewWithController:(UIViewController *)controller title:(NSString *)title message:(NSString *)message cancelButtonTitle:(NSString *)cancelTitle otherButtonTitles:(NSArray<NSString *> *)arrTitles handler:(void (^)(UIAlertController *alertController, UIAlertAction *action, NSInteger index))handler
{
    [UIAlertController showPromptViewWithController:controller preferredStyle:UIAlertControllerStyleAlert title:title message:message cancelButtonTitle:cancelTitle otherButtonTitles:arrTitles handler:handler];
}

/**
 * 显示 Action 提示信息
 *
 * @param controller                显示的controller
 * @param title                     标题
 * @param message                   信息
 * @param cancelTitle               取消按钮标题
 * @param arrTitles                 其他按钮标题 数组 NSString 格式
 * @param handler                   点击回调
 * @blockParam alertController      回调 UIAlertController
 * @blockParam action               回调 UIAlertAction
 * @blockParam index                回调 点击按钮排序 0为取消按钮 大于0s时 返回根据arrTitles下标+1
 */
+ (void)showActionViewWithController:(UIViewController *)controller title:(NSString *)title message:(NSString *)message cancelButtonTitle:(NSString *)cancelTitle otherButtonTitles:(NSArray<NSString *> *)arrTitles handler:(void (^)(UIAlertController *alertController, UIAlertAction *action, NSInteger index))handler
{
    [UIAlertController showPromptViewWithController:controller preferredStyle:UIAlertControllerStyleActionSheet title:title message:message cancelButtonTitle:cancelTitle otherButtonTitles:arrTitles handler:handler];
}

@end
