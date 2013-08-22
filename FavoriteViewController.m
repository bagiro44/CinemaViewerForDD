//
//  FavoriteViewController.m
//  CinemaViewer
//
//  Created by Dmitriy Remezov on 22.08.13.
//  Copyright (c) 2013 Dmitriy Remezov. All rights reserved.
//

#import "FavoriteViewController.h"

@interface FavoriteViewController ()

@end

@implementation FavoriteViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    ViewController *viewController = [[ViewController alloc] init];
    NSArray *array = [viewController readFavoriteFilmsDB];
    NSLog(@"%@", array.description);
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
