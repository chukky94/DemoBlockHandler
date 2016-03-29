//
//  DemoObject.h
//  AsyncBoolCallback
//
//  Created by Christian Huck on 29.03.16.
//  Copyright © 2016 highq. All rights reserved.
//

#import <Foundation/Foundation.h>


//in hqtypedef
typedef void (^successHandler)(BOOL success);

@interface DemoObject : NSObject

-(void) callingFunc;

-(void) calledFunc:(successHandler) handler;

-(void) successFunc;

-(void) failFunc;
    
    

@end
