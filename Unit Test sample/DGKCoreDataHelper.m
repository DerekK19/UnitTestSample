//
//  DGKCoreDataHelper.m
//  Unit Test sample
//
//  Created by Derek Knight on 5/08/13.
//  Copyright (c) 2013 DGK. All rights reserved.
//

#import "DGKCoreDataHelper.h"
#import "DGKAppDelegate.h"

NSManagedObjectContext *testingContext;

@implementation DGKCoreDataHelper

+ (void) setManagedObjectContext:(NSManagedObjectContext *) value
{
    testingContext = value;
}

+ (NSManagedObjectContext *) getManagedObjectContext
{
    if (testingContext != nil)
    {
        return testingContext;
    }
    DGKAppDelegate *delegate = (DGKAppDelegate *) [[UIApplication sharedApplication] delegate];
    return [delegate managedObjectContext];
}

@end
