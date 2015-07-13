//
//  Todo.h
//  ObjCDemo
//
//  Created by John Gorter on 13-07-2015.
//  Copyright (c) 2015 John Gorter. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Todo : NSObject

@property (nonatomic, strong) NSString* title;
@property (nonatomic, strong) NSString* descr;
@property (nonatomic) bool completed;
@property (nonatomic) int priority;

-(id)initWithTitle:(NSString*)title Description:(NSString*)description;
-(id)initWithTitle:(NSString*)title Description:(NSString*)description Priority:(int)priority;

@end
