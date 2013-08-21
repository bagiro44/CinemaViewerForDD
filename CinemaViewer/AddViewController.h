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

@interface AddViewController : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (nonatomic, strong, readonly) NSManagedObjectContext *context;
@property (weak, nonatomic) IBOutlet UITextField *filmTitle;
- (IBAction)addFilm:(id)sender;

@end
