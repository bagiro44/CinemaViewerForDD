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
{
    @private
    MainFilms *films;
    
    UIImageView *imageView;
    UILabel *FilmTitle;
    UILabel *FilmYear;
    UILabel *prepTimeLabel;
}
@property (weak, nonatomic) MainFilms *films;

@property (weak, nonatomic) NSIndexPath *indexPath;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *FilmTitle;
@property (weak, nonatomic) IBOutlet UILabel *FilmYear;
@property (weak, nonatomic) IBOutlet UIButton *favButton;

- (IBAction)addFav:(id)sender;

@end
