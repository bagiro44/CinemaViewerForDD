//
//  DetailFilmViewController.h
//  CinemaViewer
//
//  Created by Dmitriy Remezov on 16.08.13.
//  Copyright (c) 2013 Dmitriy Remezov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailFilmViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextView *FilmDescription;
@property (weak, nonatomic) IBOutlet UILabel *FilmGenre;
@property (weak, nonatomic) IBOutlet UILabel *Year;
@property (weak, nonatomic) IBOutlet UILabel *FilmTitle;


@end
