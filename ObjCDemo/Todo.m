//
//  Todo.m
//  ObjCDemo
//
//  Created by John Gorter on 13-07-2015.
//  Copyright (c) 2015 John Gorter. All rights reserved.
//

#import "Todo.h"

@implementation Todo


-(id)initWithTitle:(NSString *)title Description:(NSString *)description{
   return [self initWithTitle:title Description:description Priority:1];
}

-(id)initWithTitle:(NSString *)title Description:(NSString *)description Priority:(int)priority{
    self = [super init];
    if (self)
    {
        self.completed = false;
        self.title = title;
        self.descr = description;
        self.priority = priority;
    }
    return self;
}

@end
