//
//  Lippi
//  SelectShadeViewController.swift
//
//  obrown917@gmail.com
//  Copyright © 2016 Olivia Brown. All rights reserved.
//

import UIKit
// import Alamofire

class SelectShadeViewController: UIViewController {
    
    let messageComposer = MessageComposer()
    var productButtonNumber: Int = Int()
    var shadeButton:Int = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonRed.layer.cornerRadius = 15
        buttonRed.backgroundColor = UIColor(red:1.00, green:0.07, blue:0.14, alpha:1.0)
        buttonPink.layer.cornerRadius = 15
        buttonPink.backgroundColor = UIColor(red:1.00, green:0.07, blue:0.14, alpha:1.0)
        buttonBerry.layer.cornerRadius = 15
        buttonBerry.backgroundColor = UIColor(red:1.00, green:0.07, blue:0.14, alpha:1.0)
        buttonCoral.layer.cornerRadius = 15
        buttonCoral.backgroundColor = UIColor(red:1.00, green:0.07, blue:0.14, alpha:1.0)
        buttonNude.layer.cornerRadius = 15
        buttonNude.backgroundColor = UIColor(red:1.00, green:0.07, blue:0.14, alpha:1.0)
    }
    @IBOutlet weak var buttonRed: UIButton!
    @IBOutlet weak var buttonPink: UIButton!
    @IBOutlet weak var buttonBerry: UIButton!
    @IBOutlet weak var buttonCoral: UIButton!
    @IBOutlet weak var buttonNude: UIButton!
    @IBOutlet weak var testImage: UIImageView!

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
    
   @IBAction func Red_Btn(_ sender: AnyObject) {
        self.shadeButton = 1
        performSegue(withIdentifier: "Identifier", sender: sender)
    }
    @IBAction func Pink_Btn(_ sender: AnyObject) {
        self.shadeButton = 2
        performSegue(withIdentifier: "Identifier", sender: sender)
    }
    @IBAction func Berry_Btn(_ sender: AnyObject) {
        self.shadeButton = 3
        performSegue(withIdentifier: "Identifier", sender: sender)
    }
    @IBAction func Coral_Btn(_ sender: AnyObject) {
        self.shadeButton = 4
        performSegue(withIdentifier: "Identifier", sender: sender)
    }
    @IBAction func Nude_Btn(_ sender: AnyObject) {
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
