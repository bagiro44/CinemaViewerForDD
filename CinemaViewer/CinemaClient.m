//
//  CinemaClient.m
//  CinemaViewer
//
//  Created by Dmitriy Remezov on 20.08.13.
//  Copyright (c) 2013 Dmitriy Remezov. All rights reserved.
//

#import "CinemaClient.h"
#import <CoreData/CoreData.h>

@interface CinemaClient()
@property (nonatomic, strong, readwrite) NSManagedObjectContext *ManagedObjectContext;
@end

@implementation CinemaClient


+ (CinemaClient *)sharedInstance;
{
	static dispatch_once_t p = 0;
	__strong static id _sharedObject = nil;
	dispatch_once(&p, ^{
		_sharedObject = [[self alloc] init];
	});
	return _sharedObject;
}


-(id)init
{
    self = [super init];
    if (!self)
    {
        return nil;
    }
    NSError *error = nil;
    NSString *const kDataBaseFileName = @"Films.sqlite";
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentDirectory = [paths objectAtIndex:0];
    NSString *dataBasePath = [documentDirectory stringByAppendingPathComponent:kDataBaseFileName];
    
    NSManagedObjectModel *ObjectModel = [NSManagedObjectModel mergedModelFromBundles:nil];
    NSPersistentStoreCoordinator *StoreCoordinator = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:ObjectModel];
    [StoreCoordinator addPersistentStoreWithType:NSSQLiteStoreType configuration:Nil URL:[NSURL fileURLWithPath:dataBasePath] options:nil error:&error];
    
    NSManagedObjectContext *ManagedObjectContext = [[NSManagedObjectContext alloc] init];
    ManagedObjectContext.persistentStoreCoordinator = StoreCoordinator;
    self.ManagedObjectContext = ManagedObjectContext;
    return self;
}



- (void) addFilmInDB:(MainFilms*)film
{
    MainFilms *filmhh = film;
    NSLog(@"%@", filmhh.title); 
}

@end
