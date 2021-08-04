//
//  ContacterViewController.swift
//  Mon_CV
//
//  Created by Thomas Jamme on 03/08/2021.
//

import UIKit
import PDFKit

class ContacterViewController: UIViewController {
    
    //Affichage PDF CV
    
    @IBOutlet weak var pdfView: PDFView!

    var pdfUrl: URL {
        Bundle.main.url(forResource: "pdf", withExtension: "pdf")!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let pdfDocument = PDFDocument(url: pdfUrl) {
            pdfView.autoScales = true
            pdfView.displayMode = .singlePageContinuous
            pdfView.displayDirection = .vertical
            pdfView.document = pdfDocument
        }
    }
    //Bouton de partage de CV
    @IBAction func displayActivityViewController(_ sender: Any) {
        let objectsToShare = [pdfUrl] as [Any]
        let shareViewController = UIActivityViewController(activityItems: objectsToShare, applicationActivities: nil)
        shareViewController.popoverPresentationController?.sourceView = self.view
        
        self.present(shareViewController, animated: true, completion: nil)
    }
    
    

}
