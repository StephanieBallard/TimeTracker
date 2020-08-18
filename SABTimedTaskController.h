//
//  SABTimedTaskController.h
//  TimeTracker
//
//  Created by Stephanie Ballard on 8/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SABTimedTask;

NS_ASSUME_NONNULL_BEGIN

@interface SABTimedTaskController : NSObject

//In the header file, Create a property that is an NSMutableArray of your TimedTasks. What property attributes should this have?
@property (nonatomic, copy) NSMutableArray<SABTimedTask *> *timedTask;

//Also in the header define a createTimedTaskWith function that takes in each of the 4 settable properties of a TimedTask.
- (void)createTimedTaskWithClient: (NSString *)client
                          summary: (NSString *)summary
                       hourlyRate: (double)hourlyRate
                      hoursWorked: (double)hoursWorked;

@end

NS_ASSUME_NONNULL_END
