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
    self.FilmGenre.text = film.title;//film.genre;
    self.Year.text = film.title;//[film.year stringValue];
    self.FilmDescription.text = film.title;//film.descriptionFilm;
    
    NSLog(@"success %@", film.title);
    
}


- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString: @"detailToEdit"])
    {
        [segue.destinationViewController setFilm:film];
        //[segue.destinationViewController setContext:context];
    }
}


@end
