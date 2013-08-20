//
//  DetailFilmViewController.m
//  CinemaViewer
//
//  Created by Dmitriy Remezov on 16.08.13.
//  Copyright (c) 2013 Dmitriy Remezov. All rights reserved.
//

#import "DetailFilmViewController.h"
#import "AppDelegate.h"

@interface DetailFilmViewController ()

@end

@implementation DetailFilmViewController

@synthesize FilmTitle;
@synthesize FilmGenre;
@synthesize FilmDescription;



- (void)viewDidLoad
{
    [super viewDidLoad];
    FilmTitle.text = _stringgg;
    //FilmGenre.text = @"helloooooo";
    
}

- (void) setFilmForDetail:(MainFilms *)filmForDetail
{
    _filmForDetail = filmForDetail;
    NSLog(@"fff %@", filmForDetail.title);
}


- (void) setStringgg:(NSString *)stringgg
{
    _stringgg = stringgg;
    NSLog(@"fff %@", _stringgg);
}

@end
