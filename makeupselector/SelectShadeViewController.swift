//
//  SelectShadeViewController.swift
//  Lippi
//
//  Created by Olivia on 6/28/16.
//  Copyright © 2016 Olivia. All rights reserved.
//

import UIKit

class SelectShadeViewController: UIViewController {
    
    let messageComposer = MessageComposer()
    var shadeButton:Int = Int()
    
    func swipeRight(recognizer : UISwipeGestureRecognizer) {
        self.performSegueWithIdentifier("swipeToSelectProduct", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let recognizer: UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(ShadeViewController.swipeRight(_:)))
        recognizer.direction = .Right
        self.view .addGestureRecognizer(recognizer)
    }
    
    @IBAction func sendTextMessageButtonTapped(sender: UIButton) {
        if (messageComposer.canSendText()) {
            // Obtain a configured MFMessageComposeViewController
            let messageComposeVC = messageComposer.configuredMessageComposeViewController()
            presentViewController(messageComposeVC, animated: true, completion: nil)
        } else {
            let errorAlert = UIAlertController(title: "Cannot Send Text Message", message: "Your device is not able to send text messages.", preferredStyle: .Alert)
            errorAlert.addAction(UIAlertAction(title: "OK", style: .Default) { _ in })
            self.presentViewController(errorAlert, animated: true){}
        }
    }
    
    @IBAction func unwindSelectShadeViewController(segue: UIStoryboardSegue) {
        // defining method
    }
    @IBAction func Red_Btn(sender: AnyObject) {
        self.shadeButton = 1
        performSegueWithIdentifier("Identifier", sender: sender)
    }
    @IBAction func Pink_Btn(sender: AnyObject) {
        self.shadeButton = 2
        performSegueWithIdentifier("Identifier", sender: sender)
    }
    @IBAction func Berry_Btn(sender: AnyObject) {
        self.shadeButton = 3
        performSegueWithIdentifier("Identifier", sender: sender)
    }
    @IBAction func Coral_Btn(sender: AnyObject) {
        self.shadeButton = 4
        performSegueWithIdentifier("Identifier", sender: sender)
    }
    @IBAction func Nude_Btn(sender: AnyObject) {
        self.shadeButton = 5
        performSegueWithIdentifier("Identifier", sender: sender)
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "Identifier"{
            if let destinationVC = segue.destinationViewController as? ShadeViewController{
                destinationVC.button_number = self.shadeButton
            }
        }
    }
}
