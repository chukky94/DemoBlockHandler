//
//  main.m
//  AsyncBoolCallback
//
//  Created by Christian Huck on 29.03.16.
//  Copyright © 2016 highq. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DemoObject.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Block Handler Demo");
        
        DemoObject *o = [[DemoObject alloc] init];
        
        //call ausführen
        [o callingFunc];
        
        
    }
    return 0;
}
