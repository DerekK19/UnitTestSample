//
//  Address.h
//  Unit Test sample
//
//  Created by Derek Knight on 5/08/13.
//  Copyright (c) 2013 DGK. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Address : NSManagedObject

@property (nonatomic, retain) NSNumber * houseNumber;
@property (nonatomic, retain) NSString * streetName;
@property (nonatomic, retain) NSString * cityName;
@property (nonatomic, retain) NSNumber * postCode;

@end
