//
//  SABTimedTaskController.m
//  TimeTracker
//
//  Created by Stephanie Ballard on 8/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "SABTimedTaskController.h"
#import "SABTimedTask.h"

@implementation SABTimedTaskController

//Going to the .m file of this TimedTaskController, call the basic init initializer. Follow the same pattern for implementing an initializer. Set the _timedTasks to a new instance of NSMutableArray.

- (instancetype)init {
    self = [super init];
    if (self) {
        _timedTask = [[NSMutableArray alloc] init];
    }
    return self;
}


- (void)createTimedTaskWithClient: (NSString *)client
                          summary: (NSString *)summary
                        ourlyRate: (double)hourlyRate
                      hoursWorked: (double)hoursWorked;
{

//    Implement the createTimedTaskWith method. This should initialize a TimedTask, then add it to the timedTasks array. Remember that there is no append method in Objective-C, but the function that does the same thing is called something else.
    
    SABTimedTask *timedTask = [[SABTimedTask alloc] initWithClient:client summary:summary hourlyRate:hourlyRate hoursWorked:hoursWorked];
    
    [self.timedTask addObject:timedTask];
}

@end
