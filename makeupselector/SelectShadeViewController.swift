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
    var button_sort:Int = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func sendTextMessageButtonTapped(sender: UIButton) {
        if (messageComposer.canSendText()) {
            // Obtain a configured MFMessageComposeViewController
            let messageComposeVC = messageComposer.configuredMessageComposeViewController()
            presentViewController(messageComposeVC, animated: true, completion: nil)
        } else {
            let errorAlert = UIAlertView(title: "Cannot Send Text Message", message: "Your device is not able to send text messages.", delegate: self, cancelButtonTitle: "OK")
            errorAlert.show()
        }
    }
    
    @IBAction func unwindSelectShadeViewController(segue: UIStoryboardSegue) {
        // defining method
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
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
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "Identifier"{
            if let destinationVC = segue.destinationViewController as? ShadeViewController{
                destinationVC.button_number = self.button_sort
            }
        }
    }
}
