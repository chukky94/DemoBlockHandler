//
//  DemoObject.m
//  AsyncBoolCallback
//
//  Created by Christian Huck on 29.03.16.
//  Copyright © 2016 highq. All rights reserved.
//

#import "DemoObject.h"

@implementation DemoObject

-(void)callingFunc{
    //make a call and pass handler
    [self calledFunc:^(BOOL success) {
        if(success){
            [self successFunc];
        }
        else{
            [self failFunc];
        }
    }];
}

-(void)calledFunc:(successHandler)handler{
    //random result
    int seconds = round([[ NSDate date] timeIntervalSince1970]);
    
    //call callback with result
    handler((seconds % 2) == 0 );
    
}

-(void)failFunc{
    NSLog(@"Operation failed");
}


-(void)successFunc{
    NSLog(@"Operation succeeds");
}
@end
