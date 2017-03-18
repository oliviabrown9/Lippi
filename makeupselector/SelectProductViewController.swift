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
    @IBAction func lipGlossButtonClicked(_ sender: AnyObject) {
        productButton = 3
        performSegue(withIdentifier: "toSelectShade", sender: sender)
    }
    @IBAction func lipStainButtonClicked(_ sender: AnyObject) {
        productButton = 4
        performSegue(withIdentifier: "toSelectShade", sender: sender)
    }
    @IBAction func lipLinerButtonClicked(_ sender: AnyObject) {
        productButton = 5
        performSegue(withIdentifier: "toSelectShade", sender: sender)
    }
    @IBAction func lipCareButtonClicked(_ sender: AnyObject) {
        productButton = 6
        performSegue(withIdentifier: "toSelectShade", sender: sender)
    }
    @IBAction func allButtonClicked(_ sender: AnyObject) {
        productButton = 7
        performSegue(withIdentifier: "toSelectShade", sender: sender)
    }
}
