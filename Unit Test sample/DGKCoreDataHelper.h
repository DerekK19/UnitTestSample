//
//  DGKCoreDataHelper.h
//  Unit Test sample
//
//  Created by Derek Knight on 5/08/13.
//  Copyright (c) 2013 DGK. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DGKCoreDataHelper : NSObject

+ (void) setManagedObjectContext:(NSManagedObjectContext *) value;
+ (NSManagedObjectContext *) getManagedObjectContext;

@end
