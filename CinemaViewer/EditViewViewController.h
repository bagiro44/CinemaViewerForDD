//
//  EditViewViewController.h
//  CinemaViewer
//
//  Created by Dmitriy Remezov on 21.08.13.
//  Copyright (c) 2013 Dmitriy Remezov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "MainFilms.h"

@interface EditViewViewController : UIViewController <UITextFieldDelegate, UITextViewDelegate>

@property (weak, nonatomic) MainFilms *film;
@property (nonatomic, strong, readonly) NSManagedObjectContext *context;

@property (weak, nonatomic) IBOutlet UITextField *filmTitle;
@property (weak, nonatomic) IBOutlet UIImageView *filmScreen;
@property (weak, nonatomic) IBOutlet UITextField *filmYear;
@property (weak, nonatomic) IBOutlet UITextField *filmGenre;
@property (weak, nonatomic) IBOutlet UITextView *filmDescription;


- (IBAction)cancelEdit:(id)sender;
- (IBAction)saveEdit:(id)sender;
@end
