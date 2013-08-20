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
#import <CoreData/CoreData.h>
#import "AppDelegate.h"



@interface ViewController ()

@end


@implementation ViewController


@synthesize managedObjectContext, fetchedResultsController;


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.title =  @"Фильмотека";

    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    /*NSInteger numberOfRows = 0;
	
    if ([[fetchedResultsController sections] count] > 0) {
        id <NSFetchedResultsSectionInfo> sectionInfo = [[fetchedResultsController sections] objectAtIndex:section];
        numberOfRows = [sectionInfo numberOfObjects];
    }
    
    return numberOfRows;*/
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellId = @"CinemaMainCell";
    
    MainFilmCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    [self configureCell:cell atIndexPath:indexPath];
    
    return cell;
}
- (void)configureCell:(MainFilmCell *)cell atIndexPath:(NSIndexPath *)indexPath
{
	MainFilms *films = (MainFilms *)[fetchedResultsController objectAtIndexPath:indexPath];
    cell.films = films;
}



- (NSFetchedResultsController *)fetchedResultsController
{
    if (fetchedResultsController == nil)
    {
        NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
        NSEntityDescription *entity = [NSEntityDescription entityForName:@"Films" inManagedObjectContext:managedObjectContext];
        [fetchRequest setEntity:entity];
        
        NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"title" ascending:YES];
        NSArray *sortDescriptors = [[NSArray alloc] initWithObjects:sortDescriptor, nil];
        
        [fetchRequest setSortDescriptors:sortDescriptors];
        
        NSFetchedResultsController *aFetchedResultsController = [[NSFetchedResultsController alloc] initWithFetchRequest:fetchRequest managedObjectContext:managedObjectContext sectionNameKeyPath:nil cacheName:@"Root"];
        //aFetchedResultsController.delegate = self;
        self.fetchedResultsController = aFetchedResultsController;

    }
	
	return fetchedResultsController;
}

- (IBAction)addFilmInDB:(id)sender
{
    // To add a new recipe, create a RecipeAddViewController.  Present it as a modal view so that the user's focus is on the task of adding the recipe; wrap the controller in a navigation controller to provide a navigation bar for the Done and Save buttons (added by the RecipeAddViewController in its viewDidLoad method).
    AddViewController *addController = [[AddViewController alloc] initWithNibName:@"Новый фильмы" bundle:nil];
    //addController.delegate = self;
	
	MainFilms *newFilms = [NSEntityDescription insertNewObjectForEntityForName:@"Films" inManagedObjectContext:self.managedObjectContext];
	addController.films = newFilms;
    
    //UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:addController];
    //[self presentModalViewController:navigationController animated:NO];
}
@end
