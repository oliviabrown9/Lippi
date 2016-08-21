//
//  SelectProductViewController.swift
//  Lippi
//
//  Created by Olivia on 6/28/16.
//  Copyright © 2016 Olivia. All rights reserved.
//

import UIKit

class SelectProductViewController: UIViewController {
    var productButton:Int = Int()
    
    @IBAction func unwindSelectProductViewController(segue: UIStoryboardSegue) {
        // defining unwind method
    }
    
    @IBAction func Lipstick_Btn(sender: AnyObject) {
        self.productButton = 1
        performSegueWithIdentifier("toSelectShade", sender: sender)
    }
    @IBAction func LiquidLipstick_Btn(sender: AnyObject) {
        self.productButton = 2
        performSegueWithIdentifier("toSelectShade", sender: sender)
    }
    @IBAction func LipCrayon_Btn(sender: AnyObject) {
        self.productButton = 3
        performSegueWithIdentifier("toSelectShade", sender: sender)
    }
    @IBAction func LipStain_Btn(sender: AnyObject) {
        self.productButton = 4
        performSegueWithIdentifier("toSelectShade", sender: sender)
    }
    @IBAction func LipLiner_Btn(sender: AnyObject) {
        self.productButton = 5
        performSegueWithIdentifier("toSelectShade", sender: sender)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "toSelectShade"{
            if let destinationVC = segue.destinationViewController as? ShadeViewController{
                destinationVC.productButtonNumber = self.productButton
            }
            print(self.productButton)
            
        }}}