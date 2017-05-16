//
//  Person.m
//  001_RunTime
//
//  Created by Fengtf on 2017/5/8.
//  Copyright © 2017年 ftf. All rights reserved.
//

#import "Person.h"
#import <objc/runtime.h>
#import <objc/message.h>

@interface Person (){
    NSInteger       _instance1;
    NSString    *   _instance2;
}

@property (nonatomic, assign) NSUInteger integer;

- (void)method3WithArg1:(NSInteger)arg1 arg2:(NSString *)arg2;


@end

@implementation Person

-(void)method1:(NSString *)name title:(NSString *)title{

 
}

+(void)classMethod:(NSString *)name title:(NSString *)title{

}


+(NSString *)myLog{
    NSLog(@"----mylog");
    return  @"myLog";
}


-(void)pLog{
    NSLog(@"--I'm p log");
}

-(void)cLog{
    NSLog(@"--I'm c Log");
}


-(void)eat{
    NSLog(@"--Class: Person , method :eat had been called");
}

@end







