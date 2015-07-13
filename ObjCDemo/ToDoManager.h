//
//  ToDoManager.h
//  ObjCDemo
//
//  Created by John Gorter on 13-07-2015.
//  Copyright (c) 2015 John Gorter. All rights reserved.
//

#import <Foundation/Foundation.h>


@class Todo;
@interface ToDoManager : NSObject

-init;

-(void)addTodo:(Todo*)todo;
-(void)deleteTodo:(Todo*)todo;
-(void)markTodoDone:(Todo*)todo;


-(NSArray*)getTodos;

@end
