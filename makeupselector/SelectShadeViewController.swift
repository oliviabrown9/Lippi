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
    var shadeButton:Int = Int()

    @IBOutlet weak var buttonRed: UIButton!
    @IBOutlet weak var buttonPink: UIButton!
    @IBOutlet weak var buttonBerry: UIButton!
    @IBOutlet weak var buttonCoral: UIButton!
    @IBOutlet weak var buttonNude: UIButton!
    
   @IBAction func redButtonClicked(_ sender: AnyObject) {
        self.shadeButton = 1
        performSegue(withIdentifier: "Identifier", sender: sender)
    }
    @IBAction func pinkButtonClicked(_ sender: AnyObject) {
        self.shadeButton = 2
        performSegue(withIdentifier: "Identifier", sender: sender)
    }
    @IBAction func berryButtonClicked(_ sender: AnyObject) {
        self.shadeButton = 3
        performSegue(withIdentifier: "Identifier", sender: sender)
    }
    @IBAction func coralButtonClicked(_ sender: AnyObject) {
        self.shadeButton = 4
        performSegue(withIdentifier: "Identifier", sender: sender)
    }
    @IBAction func nudeButtonClicked(_ sender: AnyObject) {
        self.shadeButton = 5
        performSegue(withIdentifier: "Identifier", sender: sender)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Identifier"{
            if let destinationVC = segue.destination as? ShadeViewController{
                destinationVC.shadeButtonNumber = self.shadeButton
            }
        }
    }
}
