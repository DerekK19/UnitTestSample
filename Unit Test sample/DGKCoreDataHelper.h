//
//  DGKCoreDataHelper.h
//  Unit Test sample
//
//  Created by Derek Knight on 5/08/13.
//  Copyright (c) 2013 DGK. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 @interface DGKCoreDataHelper

 @{
 */
/**
 @brief Core data helper class
 
 A set of helper functions to simplify coe data access both from the application and from the unit test classes
 */
@interface DGKCoreDataHelper : NSObject

/**
 @brief Set the Managed Object Context

 Sets the Managed Object Context for the application. This function would only be called by a unit testing session
 
 @param value The new Managed Object Context

 */
+ (void) setManagedObjectContext:(NSManagedObjectContext *) value;
/**
 @brief Get the ManaGed Object Context

 Gets the Managed Object Context for the application. This would be for either the runnable app or the unit testing session

 @returns The current Managed Object Context
 */
+ (NSManagedObjectContext *) getManagedObjectContext;

@end

/** @} */
