//
//  DGKBaseController.m
//  Unit Test sample
//
//  Created by Derek Knight on 7/08/13.
//  Copyright (c) 2013 DGK. All rights reserved.
//

#import "DGKBaseController.h"
#import "DGKCoreDataHelper.h"

@implementation DGKBaseController

- (id) initWithEntityName:(NSString *)name
{
    self = [super init];
    if (self)
    {
    _context = [DGKCoreDataHelper getManagedObjectContext];
    _entityName = name;
    _entityDesc = [NSEntityDescription entityForName:_entityName
                              inManagedObjectContext:_context];
    }
    return self;
}

- (NSFetchRequest *)getRequest
{
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    [request setEntity:_entityDesc];

    return request;
}

- (NSArray *)executeFetchRequest:(NSFetchRequest *)request
{
    NSError *error;
    NSArray *objects = [_context executeFetchRequest:request
                                               error:&error];
    return objects;
}

- (void)saveChanges
{
    NSError *error;
    [_context save:&error];
}

@end
