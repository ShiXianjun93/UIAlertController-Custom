

UIAlertControllerCustom

----------------------------------------------------------------------------------

UIAlertController 对 UIAlertView 替换之后 常用形式变得繁琐 

将常用格式进行封装 提高开发效率
  
![image](./source/alert.png)


```objc  
    [self showAlertViewWithTitle:@"发现新版本" 
                         message:@"1、优化了一堆东西\n2、修复若干bug" 
               cancelButtonTitle:@"取消" 
               otherButtonTitles:@[@"前往更新"] 
                         handler:^(UIAlertController *alertController, UIAlertAction *action, NSInteger index) {
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
```




![image](./source/action.png)

```objc
    [self showActionViewWithTitle:@"选择"
                          message:nil 
                cancelButtonTitle:@"取消" 
                otherButtonTitles:@[@"拍照", @"从相册获取"]
                          handler:^(UIAlertController *alertController, UIAlertAction *action, NSInteger index) {
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
```


