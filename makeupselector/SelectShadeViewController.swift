//
//  Lippi
//  SelectShadeViewController.swift
//
//  olivia@lippi.co
//  Copyright © 2017 Olivia Brown. All rights reserved.
//

import UIKit

class SelectShadeViewController: UIViewController {
    var productButtonNumber: Int = Int()
    
   @IBAction func redButtonClicked(_ sender: AnyObject) {
        shadeButton = 1
        performSegue(withIdentifier: "Identifier", sender: sender)
    }
    @IBAction func pinkButtonClicked(_ sender: AnyObject) {
        shadeButton = 2
        performSegue(withIdentifier: "Identifier", sender: sender)
    }
    @IBAction func berryButtonClicked(_ sender: AnyObject) {
        shadeButton = 3
        performSegue(withIdentifier: "Identifier", sender: sender)
    }
    @IBAction func coralButtonClicked(_ sender: AnyObject) {
        shadeButton = 4
        performSegue(withIdentifier: "Identifier", sender: sender)
    }
    @IBAction func nudeButtonClicked(_ sender: AnyObject) {
        shadeButton = 5
        performSegue(withIdentifier: "Identifier", sender: sender)
    }
    @IBAction func brownButtonClicked(_ sender: AnyObject) {
        shadeButton = 6
        performSegue(withIdentifier: "Identifier", sender: sender)
    }
    @IBAction func allButtonClicked(_ sender: AnyObject) {
        shadeButton = 7
        performSegue(withIdentifier: "Identifier", sender: sender)
    }
}
