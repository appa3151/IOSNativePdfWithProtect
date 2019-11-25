//
//  PdfGenerate.swift
//  PdfCreating
//
//  Created by developer on 25/11/19.
//  Copyright © 2019 developer. All rights reserved.
//

import Foundation
import PDFGenerator
import QRCoder




@objc class PdfGenerate : NSObject {

    @objc func printSome() {
    let txtPdfName = UILabel();
    var txtPart1 = UILabel();
    let qrCodeImage1 = UIImageView();
    let generator = QRCodeGenerator()
    qrCodeImage1.image = generator.createImage(value: "Hello world!",size: CGSize(width: 100, height: 100))
     let v1 = UIView( frame: CGRect(x: 0.0,y: 0, width: 100.0, height: 200.0))
   txtPdfName.text = "Sagar Wallet's"
   txtPdfName.lineBreakMode = .byWordWrapping
   txtPdfName.numberOfLines = 0
   txtPdfName.frame = CGRect(x:5,y:5,width:v1.bounds.size.width - 5, height:v1.bounds.size.height)
  txtPdfName.font = UIFont(name:"HelveticaNeue-Bold", size: 4.0)
    txtPdfName.textAlignment = .left
    txtPdfName.sizeToFit()
    v1.addSubview(txtPdfName)
    txtPart1.text = "Part 1:"
     txtPart1.lineBreakMode = .byWordWrapping
     txtPart1.numberOfLines = 0
    txtPart1.frame = CGRect(x:10,y:txtPdfName.frame.height + txtPdfName.font.ascender + 2,width:v1.bounds.size.width - 10, height:v1.bounds.size.height)
      txtPart1.font = txtPart1.font.withSize(3)
      txtPart1.textAlignment = .left
      txtPart1.sizeToFit()
      v1.addSubview(txtPart1)
    qrCodeImage1.frame = CGRect(x: 22, y: txtPart1.frame.height + txtPart1.font.ascender + 8 , width: 60, height: 60)
    v1.addSubview(qrCodeImage1)
        txtPart1 = UILabel();
        txtPart1.text = "It seems wrong to me to change the label frame sizes especially when using autolayout. Using the appendFormat method seems more appropriate. Here is my example:"
           txtPart1.lineBreakMode = .byWordWrapping
           txtPart1.numberOfLines = 0
        txtPart1.frame = CGRect(x:10,y:qrCodeImage1.frame.size.height + 15 ,width:v1.bounds.size.width - 10, height:v1.bounds.size.height)
            txtPart1.font = txtPart1.font.withSize(3)
            txtPart1.textAlignment = .center
            txtPart1.sizeToFit()
            v1.addSubview(txtPart1)
        
        
    let v2 = UIView(frame: CGRect(x: 0.0,y: 0, width: 100.0, height: 200.0))
    let page1 = PDFPage.view(v1)
    let page2 = PDFPage.view(v2)

    let pages = [page1, page2]
    let dst = NSTemporaryDirectory().appending("sample1.pdf")
    do {
        try PDFGenerator.generate(pages, to: dst, password: "123456")
        // or use PDFPassword model
        try PDFGenerator.generate(pages, to: dst, password: PDFPassword("123456"))
        // or use PDFPassword model and set user/owner password
        try PDFGenerator.generate(pages, to: dst, password: PDFPassword(user: "123456", owner: "abcdef"))
        print("file generate",dst)

    } catch let error {
        print(error)
    }
    

//    do {
//        let page: [PDFPage] = [
//            .whitePage(CGSize(width: 200.0, height: 100.0)),
//            .image(imageView.image!),
//            .whitePage(CGSize(width: 200.0, height: 100.0))
//        ]
//        let path = NSTemporaryDirectory().appending("sample1.pdf")
//        try PDFGenerator.generate(page, to: path, password: "123456")
//        print(path)
//    } catch let error {
//        print(error)
//    }
    
    
    
   
    
    }
}
