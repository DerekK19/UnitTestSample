//
//  ASBPersonsController.m
//  Unit Test sample
//
//  Created by Derek Knight on 6/08/13.
//  Copyright (c) 2013 ASB. All rights reserved.
//

#import "ASBPersonsController.h"
#import "ASBCoreDataHelper.h"

@interface ASBPersonsController ()

@property (nonatomic, retain) NSString *entityName;
@property (nonatomic, retain) NSManagedObjectContext *context;
@property (nonatomic, retain) NSEntityDescription *entityDesc;

@end

@implementation ASBPersonsController

- (id) init
{
    self = [super init];
    if (self)
    {
        _context = [ASBCoreDataHelper getManagedObjectContext];
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

- (Person *)newPerson
{
    
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    [request setEntity:_entityDesc];
    
    Person *rValue = [[Person alloc]initWithEntity:_entityDesc
                    insertIntoManagedObjectContext:_context];

    return rValue;
}

- (void)saveChanges
{
    NSError *error;
    [_context save:&error];
}

@end
