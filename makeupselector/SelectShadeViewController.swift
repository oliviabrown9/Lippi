//
//  SelectShadeViewController.swift
//  Lippi
//
//  Created by Olivia on 6/28/16.
//  Copyright © 2016 Olivia Brown. All rights reserved.
//

import UIKit
import Alamofire

class SelectShadeViewController: UIViewController {
    
    let messageComposer = MessageComposer()
    var productButtonNumber: Int = Int()
    var shadeButton:Int = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        Alamofire.request(.GET, "https://mobile-backend-service.herokuapp.com/request?objects=10")
//            .responseJSON { response in
//                
//                if let JSON = response.result.value {
//                    print("JSON: \(JSON)")
//                }
//        }
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.tintColor = UIColor.whiteColor()
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
                destinationVC.shadeButtonNumber = self.shadeButton
            }
        }
    }
}
