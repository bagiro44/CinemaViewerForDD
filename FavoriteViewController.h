//
//  FavoriteViewController.h
//  CinemaViewer
//
//  Created by Dmitriy Remezov on 22.08.13.
//  Copyright (c) 2013 Dmitriy Remezov. All rights reserved.
//

#import "ViewController.h"
#import "MainFilms.h"
#import "MainFilmCell.h"

@interface FavoriteViewController : ViewController <UITableViewDataSource, UITableViewDelegate>

@property NSArray *favoriteFilms;
@property (nonatomic, strong, readonly) NSManagedObjectContext *context;

@end
