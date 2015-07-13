//
//  main.m
//  ObjCDemo
//
//  Created by John Gorter on 13-07-2015.
//  Copyright (c) 2015 John Gorter. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import "ToDoManager.h"
#import "Todo.h"


int main(int argc, const char * argv[]) {

    ToDoManager* mgr = [[ToDoManager alloc] init];
    
    Todo* todo =  [[Todo alloc] initWithTitle:@"Hond uitlaten" Description:@"de hond uitlaten..."];
    Todo* todo2 = [[Todo alloc] initWithTitle:@"Afwassen " Description:@"de hond uitlaten..."];
    Todo* todo3 = [[Todo alloc] initWithTitle:@"ObjC leren " Description:@"de hond uitlaten..."];
    Todo* todo4 = [[Todo alloc] initWithTitle:@"Eten " Description:@"de hond uitlaten..."];
    
    [mgr addTodo:todo];
    [mgr addTodo:todo2];
    [mgr addTodo:todo3];
    [mgr addTodo:todo4];
    
    
    for (id todo in [mgr getTodos]){
        NSLog(@"todo %@", [todo title]);
    }
    
#pragma mark - weghalen
    NSLog(@"regel extra");
    
    [mgr markTodoDone:todo3];
    
    for (id todo in [mgr getTodos]){
        NSLog(@"todo %@", [todo title]);
    }
  
    return 0;
}

