//
//  DetailFilmViewController.m
//  CinemaViewer
//
//  Created by Dmitriy Remezov on 16.08.13.
//  Copyright (c) 2013 Dmitriy Remezov. All rights reserved.
//

#import "DetailFilmViewController.h"

@interface DetailFilmViewController ()

@end

@implementation DetailFilmViewController
@synthesize context, film;

- (void) setContext:(NSManagedObjectContext *)_context
{
    context = _context;
}
- (void) setFilm:(MainFilms *)_film
{
    film = _film;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    AppDelegate *delegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    [self setContext:delegate.managedObjectContext];
    self.FilmTitle.text = film.title;
    self.FilmGenre.text = film.title;
    NSLog(@"а я передал =) %@", film.title);
    
}


/*- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[sender identifier] isEqual: @"toDetailView"])
    {
        [segue.destinationViewController ];
    }
}*/


@end
