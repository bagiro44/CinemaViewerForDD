//
//  MainFilmCell.h
//  CinemaViewer
//
//  Created by Dmitriy Remezov on 16.08.13.
//  Copyright (c) 2013 Dmitriy Remezov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainFilms.h"

@interface MainFilmCell : UITableViewCell

@property (strong, nonatomic) MainFilms *films;

@property (nonatomic) NSIndexPath *indexPath;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *FilmTitle;
@property (weak, nonatomic) IBOutlet UILabel *FilmYear;

- (IBAction)addFav:(id)sender;

@end
