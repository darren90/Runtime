//
//  Run_02_addMethodVc.m
//  Runtime
//
//  Created by Fengtf on 2017/5/17.
//  Copyright © 2017年 ftf. All rights reserved.
//

#import "Run_02_addMethodVc.h"
#import "Person.h"
#import <objc/runtime.h>

@interface Run_02_addMethodVc ()

@property (nonatomic,strong)Person * p;

@end

@implementation Run_02_addMethodVc

- (void)viewDidLoad {
    [super viewDidLoad];

    self.p = [[Person alloc]init];
}


- (IBAction)addMethod:(UIButton *)sender {
    class_addMethod([self.p class], @selector(guess), (IMP)run, "v@:");
    if ([self.p respondsToSelector:@selector(guess)]) {
        [self.p performSelector:@selector(guess)];

        NSLog(@"--addMethod --> guess");
    }else{
        NSLog(@"没有方法调用");
    }

}

void run(id self , SEL _cmd){
    NSLog(@"调用方法 : run");
}



 

@end
