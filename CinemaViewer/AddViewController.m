//
//  AddViewController.m
//  CinemaViewer
//
//  Created by Dmitriy Remezov on 20.08.13.
//  Copyright (c) 2013 Dmitriy Remezov. All rights reserved.
//

#import "AddViewController.h"
#import "AppDelegate.h"
#import "DetailFilmViewController.h"

@interface AddViewController ()

@end

@implementation AddViewController
@synthesize context;

- (void) setContext:(NSManagedObjectContext *)_context
{
    context = _context;
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
    
    [self.filmTitle becomeFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString: @"Detail"])
    {
        MainFilms *filmToAdd = [NSEntityDescription insertNewObjectForEntityForName:@"MainFilms" inManagedObjectContext:context];
        filmToAdd.title = self.filmTitle.text;
        [segue.destinationViewController setFilm:filmToAdd];
    }
}


- (IBAction)saveButton:(id)sender {
}
@end
