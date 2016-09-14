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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    let messageComposer = MessageComposer()

    @IBAction func sendTextMessageButtonTapped(_ sender: UIButton) {
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
    
    // Defining Product Button Values
    @IBAction func Lipstick_Btn(_ sender: AnyObject) {
        productButton = 1
        performSegue(withIdentifier: "toSelectShade", sender: sender)
    }
    @IBAction func LiquidLipstick_Btn(_ sender: AnyObject) {
        productButton = 2
        performSegue(withIdentifier: "toSelectShade", sender: sender)
    }
    @IBAction func LipCrayon_Btn(_ sender: AnyObject) {
        productButton = 3
        performSegue(withIdentifier: "toSelectShade", sender: sender)
    }
    @IBAction func LipStain_Btn(_ sender: AnyObject) {
        productButton = 4
        performSegue(withIdentifier: "toSelectShade", sender: sender)
    }
    @IBAction func LipLiner_Btn(_ sender: AnyObject) {
        productButton = 5
        performSegue(withIdentifier: "toSelectShade", sender: sender)
    }
}
