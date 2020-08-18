//
//  SABTimedTask.m
//  TimeTracker
//
//  Created by Stephanie Ballard on 8/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "SABTimedTask.h"

@implementation SABTimedTask

//In the .m file of the TimedTask implement the initializer by:
//
//Calling the super initializer
//Checking if self isn't nil
//Setting the _ version of your four readwrite properties (_client, etc.)
//Returning self.

- (instancetype)initWithClient: (NSString *)client
                       summary: (NSString *)summary
                    hourlyRate: (double)hourlyRate
                   hoursWorked: (double)hoursWorked {
    self = [super init];
    if (self != nil) {
        _client = client;
        _summary = summary;
        _hourlyRate = hourlyRate;
        _hoursWorked = hoursWorked;
    }
    return self;
}

//Implement the getter method for your total property by multiplying the timed task's hourly rate with the hours worked. This method should autocomplete if you start typing out the name of the property. For example, it should look something like this - (double)total.

- (double)total {
    return _hoursWorked * _hourlyRate;
}

@end
