//
//  ViewController.swift
//  PDFKit-Sampler
//
//  Created by ShinokiRyosei on 2017/06/08.
//  Copyright © 2017年 ShinokiRyosei. All rights reserved.
//

import UIKit
import PDFKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // 参考URL http://qiita.com/ninten320/items/7fbb46e350a44288b933
        let pdfView = PDFView()
        self.view.addSubview(pdfView)
        pdfView.translatesAutoresizingMaskIntoConstraints = false
        pdfView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        pdfView.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        pdfView.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
        pdfView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true

        let pdfURL = URL(string: "http://www.j.u-tokyo.ac.jp/kyomu/files/pdf/gakuji/20170123nittei2017.pdf")!
        // let pdfURL = URL(fileURLWithPath: Bundle.main.path(forResource: "Sample", ofType: "pdf")!) ローカルの時
        let document = PDFDocument(url: pdfURL)
        pdfView.document = document
        pdfView.backgroundColor = .lightGray
        pdfView.autoScales = true
        pdfView.displayMode = .singlePageContinuous
    }
}

