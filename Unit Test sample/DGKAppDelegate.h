//
//  DGKAppDelegate.h
//  Unit Test sample
//
//  Created by Derek Knight on 5/08/13.
//  Copyright (c) 2013 DGK. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DGKAppDelegate : UIResponder <UIApplicationDelegate>
{
//    NSManagedObjectModel *managedObjectModel;
//    NSManagedObjectContext *managedObjectContext;
//    NSPersistentStoreCoordinator *persistentStoreCoordinator;
}

@property (nonatomic, retain, readonly) NSManagedObjectModel *managedObjectModel;
@property (nonatomic, retain, readonly) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, retain, readonly) NSPersistentStoreCoordinator *persistentStoreCoordinator;

@property (strong, nonatomic) UIWindow *window;

@end
