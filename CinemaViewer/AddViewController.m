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
    if ([[segue identifier] isEqualToString: @"addDetail"])
    {
        MainFilms *filmToAdd = [NSEntityDescription insertNewObjectForEntityForName:@"MainFilms" inManagedObjectContext:context];
        filmToAdd.title = self.filmTitle.text;
        [segue.destinationViewController setFilm:filmToAdd];
        NSError *error;
        [context save:&error];
    }
}


- (IBAction)ddd:(id)sender
{
    UINavigationController *navController = self.navigationController;
    [navController popViewControllerAnimated:NO];
    //[navController popToRootViewControllerAnimated:YES];
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"MainStoryboard" bundle: nil];
    DetailFilmViewController *lvc = [storyboard instantiateViewControllerWithIdentifier:@"ViewControllerDetail"];

    [navController pushViewController:lvc animated:YES];

}
@end
