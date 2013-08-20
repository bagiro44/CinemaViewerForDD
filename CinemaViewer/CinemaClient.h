//
//  CinemaClient.h
//  CinemaViewer
//
//  Created by Dmitriy Remezov on 20.08.13.
//  Copyright (c) 2013 Dmitriy Remezov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "MainFilms.h"

@interface CinemaClient : NSObject


@property (nonatomic, strong, readonly) NSManagedObjectContext *ManagedObjectContext;

+(CinemaClient *)sharedInstance;

- (void) addFilmInDB:(MainFilms*)film;
@end
