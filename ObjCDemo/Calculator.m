//
//  Calculator.m
//  ObjCDemo
//
//  Created by John Gorter on 13-07-2015.
//  Copyright (c) 2015 John Gorter. All rights reserved.
//

#import "Calculator.h"

// CLASS EXTENSION
@interface Calculator()

@property(nonatomic) char* name;
@property(nonatomic) int age;

@end


@implementation Calculator
-(id)init{
    self = [super init];
    
    
    return self;
}

+(void)sayage{
    printf("i am a static method");
}

-(void)sayname {
 
      printf("%s %d", self->_name, self->_age);
}

-(int)Add:(int)parama AndJnt:(int)paramb{
    return parama + paramb;
}

- (void)dealloc
{
    
}

@end
