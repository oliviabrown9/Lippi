//
//  Lippi
//  SelectShadeViewController.swift
//
//  obrown917@gmail.com
//  Copyright © 2016 Olivia Brown. All rights reserved.
//

import UIKit

class SelectShadeViewController: UIViewController {
    
    let messageComposer = MessageComposer()
    var productButtonNumber: Int = Int()
    var shadeButton:Int = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonRed.layer.cornerRadius = 15
        buttonPink.layer.cornerRadius = 15
        buttonBerry.layer.cornerRadius = 15
        buttonCoral.layer.cornerRadius = 15
        buttonNude.layer.cornerRadius = 15
    }
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
