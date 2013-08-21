//
//  EditViewViewController.m
//  CinemaViewer
//
//  Created by Dmitriy Remezov on 21.08.13.
//  Copyright (c) 2013 Dmitriy Remezov. All rights reserved.
//

#import "EditViewViewController.h"

@interface EditViewViewController ()

@end

@implementation EditViewViewController

@synthesize context, film;

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
    context =  delegate.managedObjectContext;

    
    self.filmTitle.text = film.title;
    self.filmGenre.text = film.genre;
    self.filmYear.text= [film.year stringValue];
    self.filmDescription.text = film.descriptionFilm;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)cancelEdit:(id)sender
{
    [self dismissModalViewControllerAnimated:YES];
}

- (IBAction)saveEdit:(id)sender
{
    [self dismissModalViewControllerAnimated:YES];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}
@end
