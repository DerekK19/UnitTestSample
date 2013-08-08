//
//  DGKAddressesController.m
//  Unit Test sample
//
//  Created by Derek Knight on 7/08/13.
//  Copyright (c) 2013 DGK. All rights reserved.
//

#import "DGKAddressesController.h"
#import "DGKCoreDataHelper.h"

@implementation DGKAddressesController

- (id) init
{
    self = [super initWithEntityName:@"Address"];
    if (self)
    {
    }
    return self;
}

- (NSArray *)list
{
    NSFetchRequest *request = [super getRequest];
    
    NSArray *objects = [super executeFetchRequest:request];
    return objects;
}

- (Address *)newAddress
{
    Address *rValue = [[Address alloc]initWithEntity:_entityDesc
                      insertIntoManagedObjectContext:_context];
    return rValue;
}

@end
