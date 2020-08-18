//
//  SABTimedTask.h
//  TimeTracker
//
//  Created by Stephanie Ballard on 8/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SABTimedTask : NSObject

//let client: String
//var summary: String
//var hourlyRate: Double
//var hoursWorked: Double
//var total: Double

//Think about which property attributes each of these should have and add them. For example, we can calculate the total from the hourly rate multiplied by the hours worked. We could make the total have a readonly property so it doesn't create a setter. Later on in the getter, you can just perform that math in the getter. Think of it as the Objective-C version of a Swift computed property.

@property (nonatomic) NSString *client;
@property (nonatomic, copy) NSString *summary;
@property (nonatomic) double hourlyRate;
@property (nonatomic) double hoursWorked;
@property (nonatomic, readonly) double total;

//Still in the header, define a standard memberwise initializer that takes in the four non-read only properties.

- (instancetype)initWithClient: (NSString *)client
                       summary: (NSString *)summary
                    hourlyRate: (double)hourlyRate
                   hoursWorked: (double)hoursWorked;
                
@end

NS_ASSUME_NONNULL_END

