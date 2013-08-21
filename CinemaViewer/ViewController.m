//
//  ViewController.m
//  CinemaViewer
//
//  Created by Dmitriy Remezov on 16.08.13.
//  Copyright (c) 2013 Dmitriy Remezov. All rights reserved.
//

#import "ViewController.h"
#import "MainFilmCell.h"
#import "MainFilms.h"
#import "AddViewController.h"
//#import <CoreData/CoreData.h>



@interface ViewController ()

@end


@implementation ViewController
@synthesize context, filmToView;

- (void) setContext:(NSManagedObjectContext *)_context
{
    context = _context;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.title =  @"Фильмотека";
    AppDelegate *delegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    [self setContext:delegate.managedObjectContext];
    //NSManagedObjectContext* context = delegate.managedObjectContext;
    MainFilms *film = [NSEntityDescription insertNewObjectForEntityForName:@"MainFilms" inManagedObjectContext:context];
    if (film != nil)
    {
        film.title = @"форсаж";
        film.year = [NSNumber numberWithInt:2013];
        film.descriptionFilm = @"Description of this film is empty";
        film.favorites = [NSNumber numberWithBool:YES];
        film.genre = @"horoor";
    }
    NSError *error;
    
    [context save:&error];
    filmToView = [self readFilmsDB];
    
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return [filmToView count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellId = @"CinemaMainCell";
    
    MainFilmCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    cell.indexPath = indexPath;
    [self configureCell:cell atIndexPath:indexPath];
    [self configureCell:cell atIndexPath:indexPath];
    return cell;
}
- (void)configureCell:(MainFilmCell *)cell atIndexPath:(NSIndexPath *)indexPath
{
    
    MainFilms *item = [filmToView objectAtIndex:indexPath.row];
	cell.FilmTitle.text = item.title;
    cell.FilmYear.text = [item.year stringValue];
    
}

- (NSArray *) readFilmsDB
{
    NSArray *films = nil;
    
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"MainFilms" inManagedObjectContext:context];
    [fetchRequest setEntity:entity];
    NSError *error;
    films = [self.context executeFetchRequest:fetchRequest error:&error];
    return films;
}
- (IBAction)addFilmInDB:(id)sender
{
}

@end
