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
    @objc public var pdfData:NSArray = [];
       @objc public func generatePdf() -> String {
        print(pdfData)
        print("working");
        var txtTitle = UILabel();
        var txtPart = UILabel();
        var txtQrCodeString = UILabel();
        var txtMessage = UILabel();
        var qrCodeImage = UIImageView();
        var generator = QRCodeGenerator();
           
        //page 1
        let v1 = UIView( frame: CGRect(x: 0.0,y: 0, width: 150.0, height: 200.0))
        txtTitle.text = "Sagar Wallet's"
        txtTitle.lineBreakMode = .byWordWrapping
        txtTitle.numberOfLines = 0
        txtTitle.frame = CGRect(x:5,y:5,width:v1.bounds.size.width - 5, height:v1.bounds.size.height)
        txtTitle.font = UIFont(name:"HelveticaNeue-Bold", size: 4.0)
        txtTitle.textAlignment = .left
        txtTitle.sizeToFit()
        v1.addSubview(txtTitle)
        // part 1
        txtPart.text = "Part 1:"
        txtPart.lineBreakMode = .byWordWrapping
        txtPart.numberOfLines = 0
        txtPart.frame = CGRect(x:10,y:txtTitle.frame.height + txtTitle.font.ascender + 2,width:v1.bounds.size.width - 10, height:v1.bounds.size.height)
        txtPart.font = txtPart.font.withSize(3)
        txtPart.textAlignment = .left
        txtPart.sizeToFit()
        v1.addSubview(txtPart)
        qrCodeImage.image = generator.createImage(value: "part1",size: CGSize(width: 100, height: 100))
        qrCodeImage.frame = CGRect(x: 50, y: ( txtPart.frame.origin.y + txtPart.frame.height) , width: 60, height: 60)
        v1.addSubview(qrCodeImage)
        txtQrCodeString.text = "e01{\"encryptedShare\":\"1c0096dd12abb2c454802dabcd3d36f01222c835232a8d30debd686f618066a6e42e8dbe5e3d3bfc3b63370d44b266c83cd2a16161fd9ac4c8750be47dcb9b8a1a808c2f4601266485130e1f6e6387f170351e987bbc2a488de1d31486a28656ae1d1a3ff64f60cfaf024e11a02162e620fe3bcbce05276a09a9092f62069835e5f718feb99ba7c6f0474fdeb5cbbf9a6c44023dcd2c1f48";
        txtQrCodeString.lineBreakMode = .byWordWrapping
        txtQrCodeString.numberOfLines = 0
        txtQrCodeString.frame = CGRect(x:5,y: ( qrCodeImage.frame.origin.y + qrCodeImage.frame.height),width:v1.bounds.size.width - 10, height:v1.bounds.size.height)
        txtQrCodeString.font = txtQrCodeString.font.withSize(3)
        txtQrCodeString.textAlignment = .center
        txtQrCodeString.sizeToFit()
        v1.addSubview(txtQrCodeString)
        // part 2
        txtPart = UILabel();
        txtPart.text = "Part 2:"
        txtPart.lineBreakMode = .byWordWrapping
        txtPart.numberOfLines = 0
        txtPart.frame = CGRect(x:10,y:txtQrCodeString.frame.origin
            .y+txtQrCodeString.frame.height + txtQrCodeString.font.ascender + 2,width:v1.bounds.size.width - 10, height:v1.bounds.size.height)
        txtPart.font = txtPart.font.withSize(3)
        txtPart.textAlignment = .left
        txtPart.sizeToFit()
        v1.addSubview(txtPart)
        qrCodeImage = UIImageView();
        generator = QRCodeGenerator();
        qrCodeImage.image = generator.createImage(value: "part2",size: CGSize(width: 100, height: 100))
        qrCodeImage.frame = CGRect(x: 50, y: (txtPart.frame.origin.y + txtPart.frame.height), width: 60, height: 60)
        v1.addSubview(qrCodeImage)
        txtQrCodeString = UILabel();
        txtQrCodeString.text = "e01{\"encryptedShare\":\"1c0096dd12abb2c454802dabcd3d36f01222c835232a8d30debd686f618066a6e42e8dbe5e3d3bfc3b63370d44b266c83cd2a16161fd9ac4c8750be47dcb9b8a1a808c2f4601266485130e1f6e6387f170351e987bbc2a488de1d31486a28656ae1d1a3ff64f60cfaf024e11a02162e620fe3bcbce05276a09a9092f62069835e5f718feb99ba7c6f0474fdeb5cbbf9a6c44023dcd2c1f48";
        txtQrCodeString.lineBreakMode = .byWordWrapping
        txtQrCodeString.numberOfLines = 0
        txtQrCodeString.frame = CGRect(x:5,y:(qrCodeImage.frame.origin.y + qrCodeImage.frame.size.height),width:v1.bounds.size.width - 10, height:v1.bounds.size.height)
        txtQrCodeString.font = txtQrCodeString.font.withSize(3)
        txtQrCodeString.textAlignment = .center
        txtQrCodeString.sizeToFit()
        v1.addSubview(txtQrCodeString)

        // page 2
        let v2 = UIView(frame: CGRect(x: 0.0,y: 0, width: 150.0, height: 200.0))
        // part 3
        txtPart = UILabel();
        txtPart.text = "Part 3:"
        txtPart.lineBreakMode = .byWordWrapping
        txtPart.numberOfLines = 0
        txtPart.frame = CGRect(x:10,y:10,width:v1.bounds.size.width - 10, height:v1.bounds.size.height)
        txtPart.font = txtPart.font.withSize(3)
        txtPart.textAlignment = .left
        txtPart.sizeToFit()
        v2.addSubview(txtPart)
        qrCodeImage = UIImageView();
        generator = QRCodeGenerator();
        qrCodeImage.image = generator.createImage(value: "part3",size: CGSize(width: 100, height: 100))
        qrCodeImage.frame = CGRect(x: 50, y: ( txtPart.frame.origin.y + txtPart.frame.height) , width: 60, height: 60)
        v2.addSubview(qrCodeImage)
        txtQrCodeString = UILabel();
        txtQrCodeString.text = "e01{\"encryptedShare\":\"1c0096dd12abb2c454802dabcd3d36f01222c835232a8d30debd686f618066a6e42e8dbe5e3d3bfc3b63370d44b266c83cd2a16161fd9ac4c8750be47dcb9b8a1a808c2f4601266485130e1f6e6387f170351e987bbc2a488de1d31486a28656ae1d1a3ff64f60cfaf024e11a02162e620fe3bcbce05276a09a9092f62069835e5f718feb99ba7c6f0474fdeb5cbbf9a6c44023dcd2c1f48";
        txtQrCodeString.lineBreakMode = .byWordWrapping
        txtQrCodeString.numberOfLines = 0
        txtQrCodeString.frame = CGRect(x:5,y: ( qrCodeImage.frame.origin.y + qrCodeImage.frame.height),width:v1.bounds.size.width - 10, height:v1.bounds.size.height)
        txtQrCodeString.font = txtQrCodeString.font.withSize(3)
        txtQrCodeString.textAlignment = .center
        txtQrCodeString.sizeToFit()
        v2.addSubview(txtQrCodeString)
        // part 4
        txtPart = UILabel();
        txtPart.text = "Part 4:"
        txtPart.lineBreakMode = .byWordWrapping
        txtPart.numberOfLines = 0
        txtPart.frame = CGRect(x:10,y:txtQrCodeString.frame.origin
            .y+txtQrCodeString.frame.height + txtQrCodeString.font.ascender + 2,width:v1.bounds.size.width - 10, height:v1.bounds.size.height)
        txtPart.font = txtPart.font.withSize(3)
        txtPart.textAlignment = .left
        txtPart.sizeToFit()
        v2.addSubview(txtPart)
        qrCodeImage = UIImageView();
        generator = QRCodeGenerator();
        qrCodeImage.image = generator.createImage(value: "part4",size: CGSize(width: 100, height: 100))
        qrCodeImage.frame = CGRect(x: 50, y: (txtPart.frame.origin.y + txtPart.frame.height), width: 60, height: 60)
        v2.addSubview(qrCodeImage)
        txtQrCodeString = UILabel();
        txtQrCodeString.text = "e01{\"encryptedShare\":\"1c0096dd12abb2c454802dabcd3d36f01222c835232a8d30debd686f618066a6e42e8dbe5e3d3bfc3b63370d44b266c83cd2a16161fd9ac4c8750be47dcb9b8a1a808c2f4601266485130e1f6e6387f170351e987bbc2a488de1d31486a28656ae1d1a3ff64f60cfaf024e11a02162e620fe3bcbce05276a09a9092f62069835e5f718feb99ba7c6f0474fdeb5cbbf9a6c44023dcd2c1f48";
        txtQrCodeString.lineBreakMode = .byWordWrapping
        txtQrCodeString.numberOfLines = 0
        txtQrCodeString.frame = CGRect(x:5,y:(qrCodeImage.frame.origin.y + qrCodeImage.frame.size.height),width:v1.bounds.size.width - 10, height:v1.bounds.size.height)
        txtQrCodeString.font = txtQrCodeString.font.withSize(3)
        txtQrCodeString.textAlignment = .center
        txtQrCodeString.sizeToFit()
        v2.addSubview(txtQrCodeString);

        // page 3
        let v3 = UIView(frame: CGRect(x: 0.0,y: 0, width: 150.0, height: 200.0))
        // part 5
        txtPart = UILabel();
        txtPart.text = "Part 5:"
        txtPart.lineBreakMode = .byWordWrapping
        txtPart.numberOfLines = 0
        txtPart.frame = CGRect(x:10,y:10,width:v1.bounds.size.width - 10, height:v1.bounds.size.height)
        txtPart.font = txtPart.font.withSize(3)
        txtPart.textAlignment = .left
        txtPart.sizeToFit()
        v3.addSubview(txtPart)
        qrCodeImage = UIImageView();
        generator = QRCodeGenerator();
        qrCodeImage.image = generator.createImage(value: "part3",size: CGSize(width: 100, height: 100))
        qrCodeImage.frame = CGRect(x: 50, y: ( txtPart.frame.origin.y + txtPart.frame.height) , width: 60, height: 60)
        v3.addSubview(qrCodeImage)
        txtQrCodeString = UILabel();
        txtQrCodeString.text = "e01{\"encryptedShare\":\"1c0096dd12abb2c454802dabcd3d36f01222c835232a8d30debd686f618066a6e42e8dbe5e3d3bfc3b63370d44b266c83cd2a16161fd9ac4c8750be47dcb9b8a1a808c2f4601266485130e1f6e6387f170351e987bbc2a488de1d31486a28656ae1d1a3ff64f60cfaf024e11a02162e620fe3bcbce05276a09a9092f62069835e5f718feb99ba7c6f0474fdeb5cbbf9a6c44023dcd2c1f48";
        txtQrCodeString.lineBreakMode = .byWordWrapping
        txtQrCodeString.numberOfLines = 0
        txtQrCodeString.frame = CGRect(x:5,y: ( qrCodeImage.frame.origin.y + qrCodeImage.frame.height),width:v1.bounds.size.width - 10, height:v1.bounds.size.height)
        txtQrCodeString.font = txtQrCodeString.font.withSize(3)
        txtQrCodeString.textAlignment = .center
        txtQrCodeString.sizeToFit()
        v3.addSubview(txtQrCodeString)
        // part 4
        txtPart = UILabel();
        txtPart.text = "Part 6:"
        txtPart.lineBreakMode = .byWordWrapping
        txtPart.numberOfLines = 0
        txtPart.frame = CGRect(x:10,y:txtQrCodeString.frame.origin
            .y+txtQrCodeString.frame.height + txtQrCodeString.font.ascender + 2,width:v1.bounds.size.width - 10, height:v1.bounds.size.height)
        txtPart.font = txtPart.font.withSize(3)
        txtPart.textAlignment = .left
        txtPart.sizeToFit()
        v3.addSubview(txtPart)
        qrCodeImage = UIImageView();
        generator = QRCodeGenerator();
        qrCodeImage.image = generator.createImage(value: "part6",size: CGSize(width: 100, height: 100))
        qrCodeImage.frame = CGRect(x: 50, y: (txtPart.frame.origin.y + txtPart.frame.height), width: 60, height: 60)
        v3.addSubview(qrCodeImage)
        txtQrCodeString = UILabel();
        txtQrCodeString.text = "e01{\"encryptedShare\":\"1c0096dd12abb2c454802dabcd3d36f01222c835232a8d30debd686f618066a6e42e8dbe5e3d3bfc3b63370d44b266c83cd2a16161fd9ac4c8750be47dcb9b8a1a808c2f4601266485130e1f6e6387f170351e987bbc2a488de1d31486a28656ae1d1a3ff64f60cfaf024e11a02162e620fe3bcbce05276a09a9092f62069835e5f718feb99ba7c6f0474fdeb5cbbf9a6c44023dcd2c1f48";
        txtQrCodeString.lineBreakMode = .byWordWrapping
        txtQrCodeString.numberOfLines = 0
        txtQrCodeString.frame = CGRect(x:5,y:(qrCodeImage.frame.origin.y + qrCodeImage.frame.size.height),width:v1.bounds.size.width - 10, height:v1.bounds.size.height)
        txtQrCodeString.font = txtQrCodeString.font.withSize(3)
        txtQrCodeString.textAlignment = .center
        txtQrCodeString.sizeToFit()
        v3.addSubview(txtQrCodeString)

        // page 4
        let v4 = UIView(frame: CGRect(x: 0.0,y: 0, width: 150.0, height: 200.0))
        // part 5
        txtPart = UILabel();
        txtPart.text = "Part 7:"
        txtPart.lineBreakMode = .byWordWrapping
        txtPart.numberOfLines = 0
        txtPart.frame = CGRect(x:10,y:10,width:v1.bounds.size.width - 10, height:v1.bounds.size.height)
        txtPart.font = txtPart.font.withSize(3)
        txtPart.textAlignment = .left
        txtPart.sizeToFit()
        v4.addSubview(txtPart)
        qrCodeImage = UIImageView();
        generator = QRCodeGenerator();
        qrCodeImage.image = generator.createImage(value: "part7",size: CGSize(width: 100, height: 100))
        qrCodeImage.frame = CGRect(x: 50, y: ( txtPart.frame.origin.y + txtPart.frame.height) , width: 60, height: 60)
        v4.addSubview(qrCodeImage)
        txtQrCodeString = UILabel();
        txtQrCodeString.text = "e01{\"encryptedShare\":\"1c0096dd12abb2c454802dabcd3d36f01222c835232a8d30debd686f618066a6e42e8dbe5e3d3bfc3b63370d44b266c83cd2a16161fd9ac4c8750be47dcb9b8a1a808c2f4601266485130e1f6e6387f170351e987bbc2a488de1d31486a28656ae1d1a3ff64f60cfaf024e11a02162e620fe3bcbce05276a09a9092f62069835e5f718feb99ba7c6f0474fdeb5cbbf9a6c44023dcd2c1f48";
        txtQrCodeString.lineBreakMode = .byWordWrapping
        txtQrCodeString.numberOfLines = 0
        txtQrCodeString.frame = CGRect(x:5,y: ( qrCodeImage.frame.origin.y + qrCodeImage.frame.height),width:v1.bounds.size.width - 10, height:v1.bounds.size.height)
        txtQrCodeString.font = txtQrCodeString.font.withSize(3)
        txtQrCodeString.textAlignment = .center
        txtQrCodeString.sizeToFit()
        v4.addSubview(txtQrCodeString)
        // part 4
        txtPart = UILabel();
        txtPart.text = "Part 8:"
        txtPart.lineBreakMode = .byWordWrapping
        txtPart.numberOfLines = 0
        txtPart.frame = CGRect(x:10,y:txtQrCodeString.frame.origin
            .y+txtQrCodeString.frame.height + txtQrCodeString.font.ascender + 2,width:v1.bounds.size.width - 10, height:v1.bounds.size.height)
        txtPart.font = txtPart.font.withSize(3)
        txtPart.textAlignment = .left
        txtPart.sizeToFit()
        v4.addSubview(txtPart)
        qrCodeImage = UIImageView();
        generator = QRCodeGenerator();
        qrCodeImage.image = generator.createImage(value: "part8",size: CGSize(width: 100, height: 100))
        qrCodeImage.frame = CGRect(x: 50, y: (txtPart.frame.origin.y + txtPart.frame.height), width: 60, height: 60);
        v4.addSubview(qrCodeImage);
        txtQrCodeString = UILabel();
        txtQrCodeString.text =   "e01{\"encryptedShare\":\"1c0096dd12abb2c454802dabcd3d36f01222c835232a8d30debd686f618066a6e42e8dbe5e3d3bfc3b63370d44b266c83cd2a16161fd9ac4c8750be47dcb9b8a1a808c2f4601266485130e1f6e6387f170351e987bbc2a488de1d31486a28656ae1d1a3ff64f60cfaf024e11a02162e620fe3bcbce05276a09a9092f62069835e5f718feb99ba7c6f0474fdeb5cbbf9a6c44023dcd2c1f48";
        txtQrCodeString.lineBreakMode = .byWordWrapping
        txtQrCodeString.numberOfLines = 0
        txtQrCodeString.frame = CGRect(x:5,y:(qrCodeImage.frame.origin.y + qrCodeImage.frame.size.height),width:v4.bounds.size.width - 10, height:v4.bounds.size.height)
        txtQrCodeString.font = txtQrCodeString.font.withSize(3)
        txtQrCodeString.textAlignment = .center
        txtQrCodeString.sizeToFit()
        v4.addSubview(txtQrCodeString)



        //page 5
        let v5 = UIView( frame: CGRect(x: 0.0,y: 0, width: 150.0, height: 200.0))
        txtTitle = UILabel();
        txtTitle.text = "Secondary Xpub (Encrypted):"
        txtTitle.lineBreakMode = .byWordWrapping
        txtTitle.numberOfLines = 0
        txtTitle.frame = CGRect(x:5,y:5,width:v1.bounds.size.width - 5, height:v1.bounds.size.height)
        txtTitle.font = UIFont(name:"HelveticaNeue-Bold", size: 4.0)
        txtTitle.textAlignment = .left
        txtTitle.sizeToFit()
        v5.addSubview(txtTitle)
        qrCodeImage = UIImageView();
        generator = QRCodeGenerator();
        qrCodeImage.image = generator.createImage(value: "Secondary Xpub",size: CGSize(width: 100, height: 100))
        qrCodeImage.frame = CGRect(x: 50, y: ( txtTitle.frame.origin.y + txtTitle.frame.height) , width: 60, height: 60)
        v5.addSubview(qrCodeImage)
        txtQrCodeString = UILabel();
        txtQrCodeString.text = "Select the standard paper size from the 'Size' selector and the pixels per inch or dots per inch from the PPI/DPI selector - the width x height in pixels at your selected resolution will be shown in the right hand box.";
        txtQrCodeString.lineBreakMode = .byWordWrapping
        txtQrCodeString.numberOfLines = 0
        txtQrCodeString.frame = CGRect(x:5,y: ( qrCodeImage.frame.origin.y + qrCodeImage.frame.height),width:v1.bounds.size.width - 10, height:v1.bounds.size.height)
        txtQrCodeString.font = txtPart.font.withSize(3)
        txtQrCodeString.textAlignment = .center
        txtQrCodeString.sizeToFit();
        v5.addSubview(txtQrCodeString);

        txtTitle = UILabel();
        txtTitle.text = "2FA Secret:"
        txtTitle.lineBreakMode = .byWordWrapping
        txtTitle.numberOfLines = 0
        txtTitle.frame = CGRect(x:5,y:(txtQrCodeString.frame.origin.y + txtQrCodeString.frame.height),width:v1.bounds.size.width - 5, height:v1.bounds.size.height)
        txtTitle.font = UIFont(name:"HelveticaNeue-Bold", size: 4.0)
        txtTitle.textAlignment = .left
        txtTitle.sizeToFit()
        v5.addSubview(txtTitle)
        qrCodeImage = UIImageView();
        generator = QRCodeGenerator();
        qrCodeImage.image = generator.createImage(value: "2FA Secret",size: CGSize(width: 100, height: 100))
        qrCodeImage.frame = CGRect(x: 50, y: ( txtTitle.frame.origin.y + txtTitle.frame.height) , width: 60, height: 60)
        v5.addSubview(qrCodeImage)
        txtQrCodeString = UILabel();
        txtQrCodeString.text = "OJTHCTBQIRVUWK3IGM3XCS2NM5WTSZSX";
        txtQrCodeString.lineBreakMode = .byWordWrapping
        txtQrCodeString.numberOfLines = 0
        txtQrCodeString.frame = CGRect(x:v5.bounds.size.width/3.0,y: ( qrCodeImage.frame.origin.y + qrCodeImage.frame.height),width:v5.bounds.size.width - 10, height:v5.bounds.size.height)
        txtQrCodeString.font = txtQrCodeString.font.withSize(3)
        txtQrCodeString.textAlignment = .center
        txtQrCodeString.sizeToFit();
        v5.addSubview(txtQrCodeString);

        txtMessage = UILabel();
        txtMessage.text = "Following assets can be used to recover your funds using the open - sourced ga - recovery tool.";
        txtMessage.lineBreakMode = .byWordWrapping
        txtMessage.numberOfLines = 0
        txtMessage.frame = CGRect(x:5,y: ( txtQrCodeString.frame.origin.y + txtQrCodeString.frame.height),width:v1.bounds.size.width - 10, height:v1.bounds.size.height)
        txtMessage.font = txtMessage.font.withSize(3)
        txtMessage.textAlignment = .left
        txtMessage.sizeToFit();
        v5.addSubview(txtMessage);


        //page 6
        let v6 = UIView( frame: CGRect(x: 0.0,y: 0, width: 150.0, height: 200.0))
        txtTitle = UILabel();
        txtTitle.text = "Secondary Mnemonic:"
        txtTitle.lineBreakMode = .byWordWrapping
        txtTitle.numberOfLines = 0
        txtTitle.frame = CGRect(x:5,y:5,width:v1.bounds.size.width - 5, height:v1.bounds.size.height)
        txtTitle.font = UIFont(name:"HelveticaNeue-Bold", size: 4.0)
        txtTitle.textAlignment = .left
        txtTitle.sizeToFit()
        v6.addSubview(txtTitle)
        txtQrCodeString = UILabel();
        txtQrCodeString.text = "drama quality empower cover girl follow near text donkey monster birth cable reveal quarter bar beyond  junk ripple twice guess faculty ship inhale prosper";
        txtQrCodeString.lineBreakMode = .byWordWrapping
        txtQrCodeString.numberOfLines = 0
        txtQrCodeString.frame = CGRect(x:v6.bounds.size.width / 10.0,y: ( txtTitle.frame.origin.y + txtTitle.frame.height),width:v6.bounds.size.width - 20, height:v6.bounds.size.height)
        txtQrCodeString.font = txtPart.font.withSize(3)
        txtQrCodeString.textAlignment = .center
        txtQrCodeString.sizeToFit();
        v6.addSubview(txtQrCodeString);

        txtTitle = UILabel();
        txtTitle.text = "BitHyve Xpub:"
        txtTitle.lineBreakMode = .byWordWrapping
        txtTitle.numberOfLines = 0
        txtTitle.frame = CGRect(x:5,y:(txtQrCodeString.frame.origin.y + txtQrCodeString.frame.height),width:v1.bounds.size.width - 5, height:v1.bounds.size.height)
        txtTitle.font = UIFont(name:"HelveticaNeue-Bold", size: 4.0)
        txtTitle.textAlignment = .left
        txtTitle.sizeToFit()
        v6.addSubview(txtTitle)
        txtQrCodeString = UILabel();
        txtQrCodeString.text = "tpubDJ3k7c98HTkjs3G7T41PMvWreRthJuS3AQkJHwyLKUdSLz9rfEuksNvmuCNBuH6RnRSFwV52KQQiroNuYNJqFf9MS6gVVZBEB12QqLctGN1";
        txtQrCodeString.lineBreakMode = .byWordWrapping
        txtQrCodeString.numberOfLines = 0
        txtQrCodeString.frame = CGRect(x:v6.bounds.size.width / 10.0,y: ( txtTitle.frame.origin.y + txtTitle.frame.height),width:v6.bounds.size.width - 20, height:v6.bounds.size.height)
        txtQrCodeString.font = txtQrCodeString.font.withSize(3)
        txtQrCodeString.textAlignment = .center
        txtQrCodeString.sizeToFit();
        v6.addSubview(txtQrCodeString);

        let page1 = PDFPage.view(v1);
        let page2 = PDFPage.view(v2);
        let page3 = PDFPage.view(v3);
        let page4 = PDFPage.view(v4);
        let page5 = PDFPage.view(v5);
        let page6 = PDFPage.view(v6);

        let pages = [page1, page2,page3,page4,page5,page6]
        let dst = NSTemporaryDirectory().appending("sample1.pdf")
        do {
            try PDFGenerator.generate(pages, to: dst, password: "123456")
            // or use PDFPassword model
            try PDFGenerator.generate(pages, to: dst, password: PDFPassword("123456"))
            // or use PDFPassword model and set user/owner password
            try PDFGenerator.generate(pages, to: dst, password: PDFPassword(user: "123456", owner: "abcdef"))
            //print("file generate",dst)

        } catch let error {
            print(error)
        }
        
        return  dst;
    }
}
