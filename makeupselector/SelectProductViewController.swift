//
//  SelectProductViewController.swift
//  Lippi
//
//  Created by Olivia on 6/28/16.
//  Copyright © 2016 Olivia. All rights reserved.
//

import UIKit

    var productButton:Int = Int()

class SelectProductViewController: UIViewController {

    
    @IBAction func unwindSelectProductViewController(segue: UIStoryboardSegue) {
        // defining unwind method
    }
    
    @IBAction func Lipstick_Btn(sender: AnyObject) {
        productButton = 1
        performSegueWithIdentifier("toSelectShade", sender: sender)
    }
    @IBAction func LiquidLipstick_Btn(sender: AnyObject) {
        productButton = 2
        performSegueWithIdentifier("toSelectShade", sender: sender)
    }
    @IBAction func LipCrayon_Btn(sender: AnyObject) {
        productButton = 3
        performSegueWithIdentifier("toSelectShade", sender: sender)
    }
    @IBAction func LipStain_Btn(sender: AnyObject) {
        productButton = 4
        performSegueWithIdentifier("toSelectShade", sender: sender)
    }
    @IBAction func LipLiner_Btn(sender: AnyObject) {
        productButton = 5
        performSegueWithIdentifier("toSelectShade", sender: sender)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "toSelectShade"{
            if let destinationVC = segue.destinationViewController as? ShadeViewController{
                destinationVC.productButtonNumber = productButton
            }
            print(productButton)
            
        }}}