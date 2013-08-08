//
//  Address.h
//  Unit Test sample
//
//  Created by Derek Knight on 7/08/13.
//  Copyright (c) 2013 DGK. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Person;

@interface Address : NSManagedObject

@property (nonatomic, retain) NSString * cityName;
@property (nonatomic, retain) NSNumber * houseNumber;
@property (nonatomic, retain) NSNumber * postCode;
@property (nonatomic, retain) NSString * streetName;
@property (nonatomic, retain) NSString * country;
@property (nonatomic, retain) Person *livesHere;

@end
