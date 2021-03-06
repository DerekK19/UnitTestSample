//
//  DGKPersonsController.h
//  Unit Test sample
//
//  Created by Derek Knight on 6/08/13.
//  Copyright (c) 2013 DGK. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DGKBaseController.h"
#import "Person.h"

@interface DGKPersonsController : DGKBaseController

- (NSArray *)list;
- (NSArray *)findWithFirstName:(NSString *)first
                   andLastName:(NSString *)last;
- (Person *)newPerson;
- (void)deletePerson:(Person *)object;

@end
