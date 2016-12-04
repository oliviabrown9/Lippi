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
//        lipstick.backgroundColor = UIColor(red:1.00, green:0.07, blue:0.14, alpha:1.0)
//        lipstick.centerLabelVerticallyWithPadding(spacing: 0)
        liquidLipstick.layer.cornerRadius = 15
//        liquidLipstick.backgroundColor = UIColor(red:1.00, green:0.07, blue:0.14, alpha:1.0)
//        liquidLipstick.centerLabelVerticallyWithPadding(spacing: 0)
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
extension UIButton {
    func centerLabelVerticallyWithPadding(spacing:CGFloat) {
        // update positioning of image and title
        let imageSize = self.imageView?.frame.size
        self.titleEdgeInsets = UIEdgeInsets(top:0,
                                            left:-(imageSize?.width)!,
                                            bottom:-((imageSize?.height)! + spacing),
                                            right:0)
        let titleSize = self.titleLabel?.frame.size
        self.imageEdgeInsets = UIEdgeInsets(top:-((titleSize?.height)! + spacing),
                                            left:0,
                                            bottom: 0,
                                            right:-(titleSize?.width)!)
        
        // reset contentInset, so intrinsicContentSize() is still accurate
        let trueContentSize = (self.titleLabel?.frame)!.union((self.imageView?.frame)!).size
        let oldContentSize = self.intrinsicContentSize
        let heightDelta = trueContentSize.height - oldContentSize.height
        let widthDelta = trueContentSize.width - oldContentSize.width
        self.contentEdgeInsets = UIEdgeInsets(top:heightDelta/2.0,
                                              left:widthDelta/2.0,
                                              bottom:heightDelta/2.0,
                                              right:widthDelta/2.0)
    }
}
