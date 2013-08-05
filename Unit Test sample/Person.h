//
//  Person.h
//  Unit Test sample
//
//  Created by Derek Knight on 5/08/13.
//  Copyright (c) 2013 DGK. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Address;

@interface Person : NSManagedObject

@property (nonatomic, retain) NSString * firstName;
@property (nonatomic, retain) NSString * lastName;
@property (nonatomic, retain) Address *livesAt;

@end
