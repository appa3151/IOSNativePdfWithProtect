//
//  PdfCreate.m
//  PdfCreating
//
//  Created by developer on 26/11/19.
//  Copyright © 2019 developer. All rights reserved.
//

#import "PdfCreate.h"
#import "PdfCreating-Swift.h"

extern NSString *MYGlobalVariable;

 @implementation PdfCreate
    
- (void) generatePdf {
        
    PdfGenerate *pdfGenerate = [[PdfGenerate alloc]init];
    pdfGenerate.pdfData = @[@"sagar"];
    NSString *pdfPath =  [pdfGenerate generatePdf];
    NSLog(pdfPath);
    
 
 }   
  
@end
