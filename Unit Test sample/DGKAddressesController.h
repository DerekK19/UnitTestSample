//
//  DGKAddressesController.h
//  Unit Test sample
//
//  Created by Derek Knight on 7/08/13.
//  Copyright (c) 2013 DGK. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DGKBaseController.h"
#import "Address.h"

@interface DGKAddressesController : DGKBaseController

- (NSArray *)list;
- (Address *)newAddress;

@end
