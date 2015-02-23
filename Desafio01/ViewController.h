//
//  ViewController.h
//  Desafio01
//
//  Created by Rubens Gondek on 2/23/15.
//  Copyright (c) 2015 Ckode. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    NSUInteger i;
}

@property NSUInteger i;
@property NSArray* vetQuestion;
@property NSArray* vetAnswer;
@property NSArray* vetImage;

@property (weak, nonatomic) IBOutlet UIImageView *imgAnswer;

@property (weak, nonatomic) IBOutlet UILabel *lblPergunta;
@property (weak, nonatomic) IBOutlet UILabel *lblResposta;

- (IBAction)btnQuestion:(id)sender;
- (IBAction)btnAnswer:(id)sender;

@end

