//
//  DetailsViewController.swift
//  SuperKahramanKitabi
//
//  Created by Ege Eren on 30.04.2023.
//

import UIKit

class DetailsViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var Label: UILabel!
    
    var secilenKahramanIsmi = ""
    var secilenKahramanGorselleri = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

 
        imageView.image = UIImage(named: secilenKahramanGorselleri)
        Label.text = secilenKahramanIsmi
    }
    
    
}
