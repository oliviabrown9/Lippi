//  
//  Lippi
//  SelectProductViewController.swift
//
//  obrown917@gmail.com
//  Copyright © 2016 Olivia Brown. All rights reserved.
//

import UIKit

var productButton:Int = Int()

class SelectProductViewController: UIViewController {
    
    @IBOutlet weak var lipstick: UIButton!
    @IBOutlet weak var liquidLipstick: UIButton!
    @IBOutlet weak var lipstickView: UIView!
    @IBOutlet weak var liquidLipstickView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        lipstickView.layer.cornerRadius = 15
        liquidLipstickView.layer.cornerRadius = 15
    }
    
    let messageComposer = MessageComposer()
    
    // Defining Product Button Values
    @IBAction func lipstickButtonClicked(_ sender: AnyObject) {
        productButton = 1
        performSegue(withIdentifier: "toSelectShade", sender: sender)
    }
    @IBAction func liquidLipstickButtonClicked(_ sender: AnyObject) {
        productButton = 2
        performSegue(withIdentifier: "toSelectShade", sender: sender)
    }
    @IBAction func contactUsButtonClicked(_ sender: UIButton) {
        if (messageComposer.canSendText()) {
            
            // Obtain a configured MFMessageComposeViewController
            let messageComposeVC = messageComposer.configuredMessageComposeViewController()
            present(messageComposeVC, animated: true, completion: nil)
        } else {
            let errorAlert = UIAlertController(title: "Cannot Send Text Message", message: "Your device is not able to send text messages.", preferredStyle: .alert)
            errorAlert.addAction(UIAlertAction(title: "OK", style: .default) { _ in })
            self.present(errorAlert, animated: true){}
        }
    }
}
