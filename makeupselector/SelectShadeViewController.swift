//
//  SelectShadeViewController.swift
//  Lippi
//
//  Created by Olivia on 6/28/16.
//  Copyright © 2016 Olivia. All rights reserved.
//

import UIKit

class SelectShadeViewController: UIViewController {
    
    @IBAction func unwindSelectShadeViewController(segue: UIStoryboardSegue) {
        // defining method
    }
    
    var button_sort:Int = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Red_Btn(sender: AnyObject) {
        self.button_sort = 1
        performSegueWithIdentifier("Identifier", sender: sender)
    }

    @IBAction func Pink_Btn(sender: AnyObject) {
        self.button_sort = 2
        performSegueWithIdentifier("Identifier", sender: sender)
    }

    
    @IBAction func Berry_Btn(sender: AnyObject) {
        self.button_sort = 3
        performSegueWithIdentifier("Identifier", sender: sender)
    }
    
    @IBAction func Coral_Btn(sender: AnyObject) {
        self.button_sort = 4
        performSegueWithIdentifier("Identifier", sender: sender)
    }
    

    @IBAction func Nude_Btn(sender: AnyObject) {
        self.button_sort = 5
        performSegueWithIdentifier("Identifier", sender: sender)
    }
    
//    
//    @IBAction func Anything_Btn(sender: AnyObject) {
//        self.button_sort = 6
//        performSegueWithIdentifier("Identifier", sender: sender)
//    }
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "Identifier"{
            if let destinationVC = segue.destinationViewController as? ShadeViewController{
                destinationVC.button_number = self.button_sort
            }
        }
    }
}
