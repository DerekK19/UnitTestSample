//
//  DGKPersonsController.m
//  Unit Test sample
//
//  Created by Derek Knight on 6/08/13.
//  Copyright (c) 2013 DGK. All rights reserved.
//

#import "DGKPersonsController.h"
#import "DGKCoreDataHelper.h"

@interface DGKPersonsController ()
{
    NSString *_entityName;
    NSManagedObjectContext *_context;
    NSEntityDescription *_entityDesc;
}
@end

@implementation DGKPersonsController

- (id) init
{
    self = [super init];
    if (self)
    {
        _context = [DGKCoreDataHelper getManagedObjectContext];
        _entityName = @"Person";
        _entityDesc = [NSEntityDescription entityForName:_entityName
                                  inManagedObjectContext:_context];
    }
    return self;
}

- (NSArray *)list
{
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    [request setEntity:_entityDesc];
    
    NSError *error;
    NSArray *objects = [_context executeFetchRequest:request
                                               error:&error];
    return objects;
}

- (NSArray *)findWithFirstName:(NSString *)first
                   andLastName:(NSString *)last
{
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    [request setEntity:_entityDesc];
    
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"(firstName LIKE[c] %@) AND (lastName LIKE[c] %@)", first, last];
    [request setPredicate:predicate];
    
    NSError *error;
    NSArray *objects = [_context executeFetchRequest:request
                                               error:&error];
    return objects;
}

- (Person *)newPerson
{
    
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    [request setEntity:_entityDesc];
    
    Person *rValue = [[Person alloc]initWithEntity:_entityDesc
                    insertIntoManagedObjectContext:_context];

    return rValue;
}

- (void)deletePerson:(Person *)object
{
    [_context deleteObject:object];
}

- (void)saveChanges
{
    NSError *error;
    [_context save:&error];
}

@end
