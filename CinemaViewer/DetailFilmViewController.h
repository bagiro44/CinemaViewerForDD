//
//  DetailFilmViewController.h
//  CinemaViewer
//
//  Created by Dmitriy Remezov on 16.08.13.
//  Copyright (c) 2013 Dmitriy Remezov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import "MainFilms.h"

@interface DetailFilmViewController : UIViewController

@property (weak, nonatomic) MainFilms *film;

@property (nonatomic, strong, readonly) NSManagedObjectContext *context;

@property (weak, nonatomic) IBOutlet UITextView *FilmDescription;
@property (weak, nonatomic) IBOutlet UILabel *FilmGenre;
@property (weak, nonatomic) IBOutlet UILabel *Year;
@property (weak, nonatomic) IBOutlet UILabel *FilmTitle;


@end
