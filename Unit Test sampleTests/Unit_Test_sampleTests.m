//
//  Unit_Test_sampleTests.m
//  Unit Test sampleTests
//
//  Created by Derek Knight on 5/08/13.
//  Copyright (c) 2013 ASB. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "ASBCoreDataHelper.h"
#import "ASBPersonsController.h"
#import "Address.h"

@interface Unit_Test_sampleTests : XCTestCase

@end

@implementation Unit_Test_sampleTests

- (void)setUp
{
    [super setUp];
    
    NSBundle *bundle = [NSBundle bundleForClass:NSClassFromString(@"Unit_Test_sampleTests")];
    NSString* path = [bundle pathForResource:@"Model"
                                      ofType:@"momd"];
    XCTAssertNotNil(path, @"No path for data model");
    NSURL *modURL = [NSURL fileURLWithPath:path];
    XCTAssertNotNil(modURL, @"Failed to find model");
    NSManagedObjectModel *model = [[NSManagedObjectModel alloc] initWithContentsOfURL:modURL];
    XCTAssertNotNil(model, @"Failed to create model");
    NSPersistentStoreCoordinator *coordinator = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel: model];
    XCTAssertNotNil(coordinator, @"Failed to create coordinator");
    [coordinator addPersistentStoreWithType:NSInMemoryStoreType
                              configuration:nil
                                        URL:nil
                                    options:nil
                                      error:nil];
    [ASBCoreDataHelper setManagedObjectContext:[[NSManagedObjectContext alloc] init]];
    XCTAssertNotNil([ASBCoreDataHelper getManagedObjectContext], @"Failed to create context");
    [[ASBCoreDataHelper getManagedObjectContext] setPersistentStoreCoordinator: coordinator];
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testAllocPerson
{
    Person *missing = [Person alloc];
    XCTAssertNotNil(missing, @"Failed to allocate a person");
}

- (void)testManagedObjectContext
{
    NSManagedObjectContext *context = [ASBCoreDataHelper getManagedObjectContext];
    XCTAssertNotNil(context, @"Failed to establish managed object context");
}

- (void)testCreateEmptyPerson
{
    NSManagedObjectContext *context = [ASBCoreDataHelper getManagedObjectContext];
    NSEntityDescription *entityDesc = [NSEntityDescription entityForName:@"Person"
                                                  inManagedObjectContext:context];
    Person *person = [[Person alloc]initWithEntity:entityDesc
                    insertIntoManagedObjectContext:context];
    
    XCTAssertNotNil(person, @"Failed to create a person");
}

- (void)testAddEmptyPerson
{
    ASBPersonsController *controller = [[ASBPersonsController alloc]init];
    
    Person *person __unused;
    person = [controller newPerson];
    [controller saveChanges];
    
    NSArray *objects = [controller list];
    
    XCTAssertNotNil(objects, @"Failed to find any person records");
    XCTAssertTrue([objects count] > 0, @"There must be some records");
}

- (void)testAddPerson
{
    ASBPersonsController *controller = [[ASBPersonsController alloc]init];
    
    Person *person = [controller newPerson];
    person.firstName = @"First";
    person.lastName = @"Last";
    [controller saveChanges];
    
    NSArray *objects = [controller list];
    
    XCTAssertNotNil(objects, @"Failed to find any person records");
    XCTAssertTrue([objects count] > 0, @"There must be some records");
    
    for (Person *object in objects)
    {
        XCTAssertTrue([object.firstName isEqualToString:@"First"] &&
                      [object.lastName isEqualToString:@"Last"]);
    }
}

- (void)testChangePerson
{
    ASBPersonsController *controller = [[ASBPersonsController alloc]init];
    
    Person *person = [controller newPerson];
    person.firstName = @"First";
    person.lastName = @"Last";
    [controller saveChanges];
    
    NSArray *objects = [controller list];
    
    XCTAssertNotNil(objects, @"Failed to find any person records");
    XCTAssertTrue([objects count] > 0, @"There must be some records");
    
    for (Person *object in objects)
    {
        XCTAssertTrue([object.firstName isEqualToString:@"First"] &&
                      [object.lastName isEqualToString:@"Last"]);
    }
    
    for (Person *object in objects)
    {
        object.firstName = @"NewFirst";
        object.lastName = @"NewLast";
    }
    
    [controller saveChanges];

    objects = [controller list];
    
    XCTAssertNotNil(objects, @"Failed to find any person records");
    XCTAssertTrue([objects count] > 0, @"There must be some records");
    
    for (Person *object in objects)
    {
        XCTAssertTrue([object.firstName isEqualToString:@"NewFirst"] &&
                      [object.lastName isEqualToString:@"NewLast"]);
    }
    
}

- (void)testCountPerson
{
    ASBPersonsController *controller = [[ASBPersonsController alloc]init];
    NSArray *objects = [controller list];
    
    XCTAssertNotNil(objects, @"Failed to find any person records");
    XCTAssertTrue([objects count] >= 0, @"There must be at least 0 records");
}

@end
