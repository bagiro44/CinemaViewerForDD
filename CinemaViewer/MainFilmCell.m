//
//  MainFilmCell.m
//  CinemaViewer
//
//  Created by Dmitriy Remezov on 16.08.13.
//  Copyright (c) 2013 Dmitriy Remezov. All rights reserved.
//

#import "MainFilmCell.h"

@implementation MainFilmCell



- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
    
    NSLog(@"%ld", (long)self.indexPath.row );
}

/*- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}*/

- (void) setIndexPath:(NSIndexPath *)indexPathe
{
    self.indexPath = indexPathe;
    //NSLog(@"%ld", (long)self.indexPath.row);
}

- (IBAction)addFav:(id)sender
{
    //NSLog(@"%ld %@ %@", (long)self.indexPath.row, self.FilmTitle.text, self.FilmYear.text );
}
@end
