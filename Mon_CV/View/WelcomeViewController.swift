//
//  WelcomeViewController.swift
//  Mon_CV
//
//  Created by Thomas Jamme on 27/07/2021.
//

import UIKit


class WelcomeViewController: UIViewController  {
    
    // Share my CV
    
    @IBOutlet weak var pdfView: UIImageView!
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func displayActivityViewController(_ sender: Any) {
        let shareViewController = UIActivityViewController(activityItems: [self.pdfView.image], applicationActivities: nil)
        shareViewController.popoverPresentationController?.sourceView = self.view
        
        self.present(shareViewController, animated: true, completion: nil)
    }

    
}
