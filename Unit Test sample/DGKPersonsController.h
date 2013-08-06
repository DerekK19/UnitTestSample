//
//  DGKPersonsController.h
//  Unit Test sample
//
//  Created by Derek Knight on 6/08/13.
//  Copyright (c) 2013 DGK. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface DGKPersonsController : NSObject

- (NSArray *)list;
- (Person *)newPerson;
- (void)deletePerson:(Person *)object;
- (void)saveChanges;

@end
