//
//  Run_01_IvarValueChangeVc.m
//  Runtime
//
//  Created by Fengtf on 2017/5/16.
//  Copyright © 2017年 ftf. All rights reserved.
//

#import "Run_01_IvarValueChangeVc.h"
#import "Person.h"
#import <objc/runtime.h>

@interface Run_01_IvarValueChangeVc ()
@property (weak, nonatomic) IBOutlet UILabel *originLabel;
@property (weak, nonatomic) IBOutlet UILabel *NewLabel;


@property (nonatomic,strong)Person * person;

@end

@implementation Run_01_IvarValueChangeVc

- (void)viewDidLoad {
    [super viewDidLoad];

    self.person = [[Person alloc]init];
    self.person.name = @"小明";
    self.originLabel.text = [NSString stringWithFormat:@"Person Origin name is : %@",self.person.name];
}


- (IBAction)changeIvarValue:(UIButton *)sender {

    unsigned int count = 0;
    Ivar *ivars = class_copyIvarList([Person class], &count);
    //获取所有的属性列表
    for (int i = 0 ; i< count ; i++) {
        Ivar ivar = ivars[i];
        const char *varName = ivar_getName(ivar);

        NSString *name = [NSString stringWithUTF8String:varName];

        //找到name属性进行值的更改
        //这里别忘了给属性加下划线
        if ([name isEqualToString:@"_name"]) {
            object_setIvar(self.person, ivar, @"小红");

            break;
        }
    }


    //更改新值
    self.NewLabel.text = [NSString stringWithFormat:@"Person Origin name is : %@",self.person.name];
}



@end
