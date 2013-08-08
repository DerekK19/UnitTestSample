//
//  DGKPersonsController.m
//  Unit Test sample
//
//  Created by Derek Knight on 6/08/13.
//  Copyright (c) 2013 DGK. All rights reserved.
//

#import "DGKPersonsController.h"
#import "DGKCoreDataHelper.h"

@implementation DGKPersonsController

- (id) init
{
    self = [super initWithEntityName:@"Person"];
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

- (NSArray *)findWithFirstName:(NSString *)first
                   andLastName:(NSString *)last
{
    NSFetchRequest *request = [super getRequest];
    
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"(firstName LIKE[c] %@) AND (lastName LIKE[c] %@)", first, last];
    [request setPredicate:predicate];
    
    NSArray *objects = [super executeFetchRequest:request];
    return objects;
}

- (Person *)newPerson
{
    Person *rValue = [[Person alloc]initWithEntity:_entityDesc
                    insertIntoManagedObjectContext:_context];

    return rValue;
}

- (void)deletePerson:(Person *)object
{
    [_context deleteObject:object];
}

@end
