//
//  ASBCoreDataHelper.h
//  Unit Test sample
//
//  Created by Derek Knight on 5/08/13.
//  Copyright (c) 2013 ASB. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ASBCoreDataHelper : NSObject

+ (void) setManagedObjectContext:(NSManagedObjectContext *) value;
+ (NSManagedObjectContext *) getManagedObjectContext;

@end
