//
//  Run_03_MethodSwizzlingVc.m
//  Runtime
//
//  Created by Fengtf on 2017/5/17.
//  Copyright © 2017年 ftf. All rights reserved.
//

#import "Run_03_MethodSwizzlingVc.h"
#import "Person.h"
#import <objc/runtime.h>

@interface Run_03_MethodSwizzlingVc ()

@property (strong, nonatomic) IBOutlet UILabel *titleL;

@end

@implementation Run_03_MethodSwizzlingVc

- (void)viewDidLoad {
    [super viewDidLoad];


}

+(void)load{
    Method run = class_getInstanceMethod([self class], @selector(runAction:));
    Method eat = class_getInstanceMethod([self class], @selector(eatAction:));

    method_exchangeImplementations(run, eat);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)eatAction:(UIButton *)sender {
    NSLog(@"--eatAction had been call");
    self.titleL.text = @"eatAction had been call";
}


- (IBAction)runAction:(UIButton *)sender {
    NSLog(@"--runAction had been call");
    self.titleL.text = @"runAction had been call";

}


@end
