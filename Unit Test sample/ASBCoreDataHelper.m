//
//  ASBCoreDataHelper.m
//  Unit Test sample
//
//  Created by Derek Knight on 5/08/13.
//  Copyright (c) 2013 ASB. All rights reserved.
//

#import "ASBCoreDataHelper.h"
#import "ASBAppDelegate.h"

NSManagedObjectContext *testingContext;

@implementation ASBCoreDataHelper

+ (void) setManagedObjectContext:(NSManagedObjectContext *) value
{
    testingContext = value;
}

+ (NSManagedObjectContext *) getManagedObjectContext
{
    NSLog(@"Testing context = 0x%08X", (uint)testingContext);
    if (testingContext != nil)
    {
        return testingContext;
    }
    ASBAppDelegate *delegate = (ASBAppDelegate *) [[UIApplication sharedApplication] delegate];
    return [delegate managedObjectContext];
}

@end
