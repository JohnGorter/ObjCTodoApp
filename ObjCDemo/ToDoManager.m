//
//  ToDoManager.m
//  ObjCDemo
//
//  Created by John Gorter on 13-07-2015.
//  Copyright (c) 2015 John Gorter. All rights reserved.
//

#import "ToDoManager.h"
#import "Todo.h"

// class extension
@interface ToDoManager()
  @property (nonatomic, strong) NSMutableArray* arrTodos;
@end

@implementation ToDoManager

-(id)init{
    self = [super init];
    if (self){
        self.arrTodos = [@[] mutableCopy];
    }
    return self;
}

-(void)addTodo:(Todo *)todo{
    [self.arrTodos addObject:todo];
}

-(void)deleteTodo:(Todo *)todo{
    for (id todoitem in self.arrTodos){
      if ([[todoitem title] isEqualToString:[todo title]]){
          [self.arrTodos removeObject:todoitem];
      }
    }
}

-(void)markTodoDone:(Todo *)todo{
    [todo setCompleted:true];
}

-(NSArray *)getTodos {
    NSMutableArray* todos = [[NSMutableArray alloc] init];
    for (id todoitem in self.arrTodos)
        if (![todoitem completed])
            [todos addObject:todoitem];
    
    return todos;
}

@end
