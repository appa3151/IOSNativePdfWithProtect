//
//  PdfCreate.h
//  PdfCreating
//
//  Created by developer on 26/11/19.
//  Copyright © 2019 developer. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN  
@class PdfGenerate;
@interface PdfCreate : NSObject
@property (strong, nonatomic) NSArray *pdfData;
  - (void) generatePdf;
@end  
      
NS_ASSUME_NONNULL_END
