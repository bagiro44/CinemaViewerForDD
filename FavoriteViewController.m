//
//  FavoriteViewController.m
//  CinemaViewer
//
//  Created by Dmitriy Remezov on 22.08.13.
//  Copyright (c) 2013 Dmitriy Remezov. All rights reserved.
//

#import "FavoriteViewController.h"

@interface FavoriteViewController ()

@end

@implementation FavoriteViewController

@synthesize favoriteFilms, context;

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
    [self.TableView reloadData];
    ViewController *viewController = [[ViewController alloc] init];
    AppDelegate *delegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    context = delegate.managedObjectContext;
    [viewController setContext:context];
    
    favoriteFilms = [viewController readFavoriteFilmsDB];
    NSLog(@"%@", favoriteFilms.description);
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return [favoriteFilms count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellId = @"CinemaMainCell";
    
    MainFilmCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    cell.indexPath = indexPath;
    [self configureCell:cell atIndexPath:indexPath];
    return cell;
}
- (void)configureCell:(MainFilmCell *)cell atIndexPath:(NSIndexPath *)indexPath
{
    [cell setContext:context];
    MainFilms *item = [favoriteFilms objectAtIndex:indexPath.row];
    cell.films = item;
	cell.FilmTitle.text = item.title;
    cell.FilmYear.text = [item.year stringValue];
    if ([item.favorites isEqual:[NSNumber numberWithBool:YES]])
    {
        UIImage *favOnImage = [UIImage imageNamed:@"fav"];
        [cell.favButton setBackgroundImage:favOnImage forState:UIControlStateNormal];
    }else
    {
        UIImage *favOnImage = [UIImage imageNamed:@"28-star"];
        [cell.favButton setBackgroundImage:favOnImage forState:UIControlStateNormal];
    }
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.TableView reloadData];
}

@end
