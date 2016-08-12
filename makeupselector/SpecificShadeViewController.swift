//
//  SpecificShadeViewController.swift
//  makeupselector
//
//  Created by Olivia on 6/25/16.
//  Copyright © 2016 Olivia. All rights reserved.
//

import UIKit
import Firebase

class SpecificShadeViewController: UIViewController {
    
    //Class Variables
    var image = UIImage()
    var webLink: NSURL!
    var weblink_values: String = String()
    var title1_value: String = String()
    var title2_value: String = String()
    var title3_value:String = String()
    var price_value: String = String()
    var whatitis_value: String = String()
    var whatitdoes_value: String = String()
    
    //IBOutlets
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var buyNowButton: UIButton!
    @IBOutlet weak var title1: UITextView!
    @IBOutlet weak var title2: UITextView!
    @IBOutlet weak var title3: UITextView!
    @IBOutlet weak var price: UITextView!
    @IBOutlet weak var whatitis: UITextView!
    @IBOutlet weak var whatitdoes: UITextView!
    
    //IBActions
    @IBAction func clickedBuyNowButton(sender: AnyObject) {
        FIRAnalytics.logEventWithName(kFIREventSelectContent, parameters: [
            kFIRParameterContentType:"cont",
            kFIRParameterItemID:"1"
            ])}
    @IBAction func unwindSelectProductViewController(segue: UIStoryboardSegue) {
        // defining method
    }
    @IBAction func buyNowButton(sender: AnyObject) {
        UIApplication.sharedApplication().openURL(webLink)
    }
    
    func swipeRight(recognizer : UISwipeGestureRecognizer) {
        self.performSegueWithIdentifier("swipeToShade", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let recognizer: UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(ShadeViewController.swipeRight(_:)))
        recognizer.direction = .Right
        self.view .addGestureRecognizer(recognizer)
        
        self.imageView.image = self.image
        webLink = NSURL(string: self.weblink_values)
        self.title1.text = self.title1_value
        self.title2.text = self.title2_value
        self.title3.text = self.title3_value
        self.price.text = self.price_value
        self.whatitis.text = self.whatitis_value
        self.whatitdoes.text = self.whatitdoes_value
    }
}
