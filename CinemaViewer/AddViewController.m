//
//  AddViewController.m
//  CinemaViewer
//
//  Created by Dmitriy Remezov on 20.08.13.
//  Copyright (c) 2013 Dmitriy Remezov. All rights reserved.
//

#import "AddViewController.h"
#import "DetailFilmViewController.h"
#import "MainFilms.h"
#import "CinemaClient.h"

@interface AddViewController ()

@end

@implementation AddViewController

@synthesize titleTextField;
@synthesize films;

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
    [titleTextField becomeFirstResponder];
	// Do any additional setup after loading the view.
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField {
	if (textField == self.titleTextField)
    {
		[textField resignFirstResponder];
		[self saveFilm];
	}
	return YES;
}

- (void) saveFilm
{
    NSError *error = nil;
    
    films.title = self.titleTextField.text;
    if (![films.managedObjectContext save:&error])
    {
        NSLog(@"Error in AddViewController #1 %@", [error localizedDescription]);
    }
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    MainFilms *film = [NSEntityDescription insertNewObjectForEntityForName:@"Films" inManagedObjectContext:mach_msg(<#mach_msg_header_t *msg#>, <#mach_msg_option_t option#>, <#mach_msg_size_t send_size#>, <#mach_msg_size_t rcv_size#>, <#mach_port_name_t rcv_name#>, <#mach_msg_timeout_t timeout#>, <#mach_port_name_t notify#>)];
    film.title = @"tttt";
    [[CinemaClient sharedInstance] addFilmInDB:film];
    NSLog(@"%@", [segue sourceViewController]);
    NSLog(@"%@", [segue destinationViewController]);
    NSLog(@"%@", [segue identifier]);
    
    if ([[segue identifier] isEqualToString:@"savefilm"])
    {
        [segue.destinationViewController setStringgg:@"hellllooo"];
    }

    
}

@end
