//
//  ViewController.m
//  Desafio01
//
//  Created by Rubens Gondek on 2/23/15.
//  Copyright (c) 2015 Ckode. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize lblPergunta, lblResposta, i, vetQuestion, vetAnswer, vetImage, imgAnswer;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor grayColor];
    vetQuestion = [[NSArray alloc] initWithObjects:@"Qual o presidente atual dos EUA?", @"Qual animal é meio pato e meio castor?", @"Qual o sentido da vida?", nil];
    vetAnswer = [[NSArray alloc] initWithObjects:@"Barack Obama", @"Ornitorrinco", @"42", nil];
    vetImage = [[NSArray alloc] initWithObjects:[UIImage imageNamed:@"img1.png"], [UIImage imageNamed:@"img2.png"], [UIImage imageNamed:@"img3.png"], nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnQuestion:(id)sender {
    if (i == 2 || [lblPergunta.text isEqual: @"Pergunta"]) {
        i = 0;
    }
    else{
        i = [vetQuestion indexOfObject:lblPergunta.text];
        i++;
    }
    [lblPergunta setText:vetQuestion[i]];
    [lblResposta setText:@"????"];
    [imgAnswer setImage:nil];
}

- (IBAction)btnAnswer:(id)sender {
    [lblResposta setText:vetAnswer[i]];
    [imgAnswer setImage:vetImage[i]];
}

@end
