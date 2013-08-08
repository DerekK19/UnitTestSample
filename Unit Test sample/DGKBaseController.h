//
//  DGKBaseController.h
//  Unit Test sample
//
//  Created by Derek Knight on 7/08/13.
//  Copyright (c) 2013 DGK. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@interface DGKBaseController : NSObject
{
    NSString *_entityName;
    NSManagedObjectContext *_context;
    NSEntityDescription *_entityDesc;
}

- (id) initWithEntityName:(NSString *)name;
- (NSFetchRequest *) getRequest;
- (NSArray *)executeFetchRequest:(NSFetchRequest *)request;
- (void)saveChanges;

@end
