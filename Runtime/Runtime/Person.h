//
//  Person.h
//  001_RunTime
//
//  Created by Fengtf on 2017/5/8.
//  Copyright © 2017年 ftf. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PersonDeledate <NSObject>

@optional
-(void)PersonDeledateMethod;

@end

@interface Person : NSObject
{
@private
    //name为 私有 成员变量
    NSString *detail;
}

// name 为成员属性
@property (nonatomic,copy)NSString * name;
// title 为成员属性
@property (nonatomic,copy)NSString * title;


-(void)method1:(NSString *)name title:(NSString *)title;

+(void)classMethod:(NSString *)name title:(NSString *)title;


-(void)eat;

@end
