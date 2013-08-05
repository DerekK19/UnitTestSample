//
//  ASBPersonsController.h
//  Unit Test sample
//
//  Created by Derek Knight on 6/08/13.
//  Copyright (c) 2013 ASB. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface ASBPersonsController : NSObject

- (NSArray *)list;
- (Person *)newPerson;
- (void)saveChanges;

@end
