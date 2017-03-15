//  
//  Lippi
//  SelectProductViewController.swift
//
//  olivia@lippi.co
//  Copyright © 2017 Olivia Brown. All rights reserved.
//

import UIKit

var productButton:Int = Int()

class SelectProductViewController: UIViewController {
    
    @IBOutlet weak var lipstick: UIButton!
    @IBOutlet weak var liquidLipstick: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // Defining Product Button Values
    @IBAction func lipstickButtonClicked(_ sender: AnyObject) {
        productButton = 1
        performSegue(withIdentifier: "toSelectShade", sender: sender)
    }
    @IBAction func liquidLipstickButtonClicked(_ sender: AnyObject) {
        productButton = 2
        performSegue(withIdentifier: "toSelectShade", sender: sender)
    }
}
