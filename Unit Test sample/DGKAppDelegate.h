//
//  DGKAppDelegate.h
//  Unit Test sample
//
//  Created by Derek Knight on 5/08/13.
//  Copyright (c) 2013 DGK. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 @interface DGKAppDelegate
 @mainpage  The iPhone App
 
 The Unit Test Sample iPhone app has a main view controller, which handles the root navigation.\n\n
 
 As with all iOS apps, the main entry point is an App Delegate @see DGKAppDelegate
 @defgroup Classes Classes
 @{
 @brief Miscellaneous Classes
 
 Classes that don't fit in any other category
 @{
 */
/**
 @brief The application's delegate
 
 A delegate object is instantiated by the main function, so this is effectively the main entry point for the iPhone app
 */
@interface DGKAppDelegate : UIResponder <UIApplicationDelegate>

/**
 @brief The Managed Object Model schema

 The model for the database. Contains the entities or data models used in the database

 */
@property (nonatomic, retain, readonly) NSManagedObjectModel *managedObjectModel;
/**
 @brief The Managed Object Context for the database

 The space within which data objects for this database are created

 */
@property (nonatomic, retain, readonly) NSManagedObjectContext *managedObjectContext;
/**
 @brief The database store coordinator

 The coordinator that will mediate objects between the context and the database

 */
@property (nonatomic, retain, readonly) NSPersistentStoreCoordinator *persistentStoreCoordinator;

/**
 @brief The main window

 The application's main window

 */
@property (strong, nonatomic) UIWindow *window;

@end

/** @} */

/** @} */
