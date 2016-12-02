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
    override func viewDidLoad() {
        super.viewDidLoad()
        lipstick.layer.cornerRadius = 15
//        var titleSpacing = 0 as CGFloat
//        if let text: NSString = lipstick.titleLabel?.text as NSString?, let font = lipstick.titleLabel?.font {
//            let attributes = [NSFontAttributeName:font]
//            let titleSize = text.size(attributes: attributes)
//            titleSpacing = (230 - titleSize.width) / 2
//            print(titleSpacing)
//        }
        lipstick.backgroundColor = UIColor(red:1.00, green:0.07, blue:0.14, alpha:1.0)
        let imageEdgeInsets = UIEdgeInsets(top: -50, left: 60, bottom: 0, right: 60)
        let titleEdgeInsets = UIEdgeInsets(top: 120, left: -55, bottom: 0, right: 51)
        lipstick.imageEdgeInsets = imageEdgeInsets
        lipstick.titleEdgeInsets = titleEdgeInsets
        liquidLipstick.layer.cornerRadius = 15
        
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
}
