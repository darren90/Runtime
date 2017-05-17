//
//  ViewController.m
//  Runtime
//
//  Created by Fengtf on 2017/5/16.
//  Copyright © 2017年 ftf. All rights reserved.
//

#import "ViewController.h"
#import "Run_00_CommonVc.h"
#import "Run_01_IvarValueChangeVc.h"
#import "Run_02_addMethodVc.h"
#import "Run_03_MethodSwizzlingVc.h"
#import "Run_04_MethodReplaceVc.h"
#import "Run_05_MethodExtraFuncVc.h"
#import "Run_06_NSCodingVc.h"
#import "Run_07_AutoConvertVc.h"

@interface ViewController ()
@property (nonatomic, strong) NSArray *datas;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    //1. 动态变量控制
    //2.动态添加方法
    //3：动态交换两个方法的实现
    //4.拦截并替换方法
    //5：在方法上增加额外功能
    //6.实现NSCoding的自动归档和解档
    //7.实现字典转模型的自动转换
    self.datas =    @[
                     @"0.常用的使用操作",
                     @"1.动态更改变量值",
                     @"2.动态添加方法",
                     @"3.动态交换两个方法的实现",
                     @"4.拦截并替换方法",
                     @"5.在方法上增加额外功能",
                     @"6.实现NSCoding的自动归档和解档",
                     @"7.实现字典转模型的自动转换"
                    ];

    self.tableView.tableFooterView = [UIView new];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.datas.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *ID = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:ID];
    }

    cell.textLabel.text = self.datas[indexPath.row];

    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *title = self.datas[indexPath.row];
    UIStoryboard *mainStoryBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];

    switch (indexPath.row) {
        case 0: {
            Run_00_CommonVc *vc = [[Run_00_CommonVc alloc]init];
            vc.title = title;
            [self.navigationController pushViewController:vc animated:YES];
        }

            break;
        case 1: {
            Run_01_IvarValueChangeVc *vc = [mainStoryBoard instantiateViewControllerWithIdentifier:@"Run_01_IvarValueChangeVc"];
            vc.title = title;
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
        case 2: {
            Run_02_addMethodVc *vc = [mainStoryBoard instantiateViewControllerWithIdentifier:@"run02"];
            vc.title = title;
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
        case 3: {
            Run_03_MethodSwizzlingVc *vc = [mainStoryBoard instantiateViewControllerWithIdentifier:@"run03"];
            vc.title = title;
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
        case 4: {
            Run_04_MethodReplaceVc *vc = [mainStoryBoard instantiateViewControllerWithIdentifier:@"run04"];
            vc.title = title;
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
        case 5: {
            Run_05_MethodExtraFuncVc *vc = [mainStoryBoard instantiateViewControllerWithIdentifier:@"run05"];
            vc.title = title;
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
        case 6: {
            Run_06_NSCodingVc *vc = [mainStoryBoard instantiateViewControllerWithIdentifier:@"run06"];
            vc.title = title;
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;
        case 7: {
            Run_07_AutoConvertVc *vc = [mainStoryBoard instantiateViewControllerWithIdentifier:@"run07"];
            vc.title = title;
            [self.navigationController pushViewController:vc animated:YES];
        }
            break;

        default:
            break;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
