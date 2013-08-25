//
//  ViewController.h
//  CinemaViewer
//
//  Created by Dmitriy Remezov on 16.08.13.
//  Copyright (c) 2013 Dmitriy Remezov. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import <CoreData/CoreData.h>
#import "AppDelegate.h"

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *TableView;
@property (nonatomic, strong, readonly) NSManagedObjectContext *context;
@property (nonatomic, strong, readonly) NSArray *filmToView;
//@property (strong, nonatomic) NSArray *_FilmContent;
//@property (nonatomic, strong) NSFetchedResultsController *fetchedResultsController;

- (IBAction)addFilmInDB:(id)sender;
- (NSArray *) readFavoriteFilmsDB;
- (NSArray *) readFilmsDB;
- (void) setContext:(NSManagedObjectContext *)_context;

@end


