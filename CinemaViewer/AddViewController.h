//
//  AddViewController.h
//  CinemaViewer
//
//  Created by Dmitriy Remezov on 20.08.13.
//  Copyright (c) 2013 Dmitriy Remezov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "MainFilms.h"

@interface AddViewController : UIViewController
<UITextFieldDelegate>
{
    @private
    MainFilms *films;
}

@property (nonatomic, strong) MainFilms *films;
@property (nonatomic, strong) IBOutlet UITextField *titleTextField;


- (void)saveFilm;

@end
