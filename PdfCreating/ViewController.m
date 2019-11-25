//
//  ViewController.m
//  PdfCreating
//
//  Created by developer on 25/11/19.
//  Copyright © 2019 developer. All rights reserved.
//

#import "ViewController.h"
#import "PdfCreating-Swift.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   PdfGenerate *pdfGenerate = [[PdfGenerate alloc] init];
       [pdfGenerate printSome];
}


@end
