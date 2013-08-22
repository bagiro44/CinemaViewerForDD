//
//  MainFilmCell.m
//  CinemaViewer
//
//  Created by Dmitriy Remezov on 16.08.13.
//  Copyright (c) 2013 Dmitriy Remezov. All rights reserved.
//

#import "MainFilmCell.h"
#import "ViewController.h"

@implementation MainFilmCell

@synthesize indexPath, films, context;


- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


- (IBAction)addFav:(id)sender
{
    if ([films.favorites isEqual:[NSNumber numberWithBool:YES]])
    {
        self.films.favorites = [NSNumber numberWithBool:NO];
        UIImage *favOnImage = [UIImage imageNamed:@"fav.png"];
        [self.favButton setBackgroundImage:favOnImage forState:UIControlStateNormal];
    }else
    {
        self.films.favorites = [NSNumber numberWithBool:YES];
        UIImage *favOnImage = [UIImage imageNamed:@"43-film-roll.png"];
        [self.favButton setBackgroundImage:favOnImage forState:UIControlStateNormal];
    }
    
    //ViewController *delegate = (ViewController *)[[UIApplication sharedApplication] delegate];
    //[delegate.TableView reloadData];
    
    NSError *error;
    [context save:&error];
}
@end
