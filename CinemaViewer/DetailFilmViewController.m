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
}


/*- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[sender identifier] isEqual: @"toDetailView"])
    {
        [segue.destinationViewController ];
    }
}*/


@end
