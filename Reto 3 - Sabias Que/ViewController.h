//
//  ViewController.h
//  Reto 3 - Sabias Que
//
//  Created by Forte Apps on 19/07/20.
//  Copyright © 2020 UVEG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property(weak, nonatomic) IBOutlet UILabel *categoryTitleLabel;
@property(weak, nonatomic) IBOutlet UILabel *factTitleLabel;
@property(weak, nonatomic) IBOutlet UITextView *factTextView;

- (IBAction)selectCategory1:(id)sender;
- (IBAction)selectCategory2:(id)sender;
- (IBAction)selectCategory3:(id)sender;
- (IBAction)nextFactTapped:(id)sender;

@end