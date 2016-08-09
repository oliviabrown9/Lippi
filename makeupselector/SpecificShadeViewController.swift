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
    
    var image = UIImage()
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var buyNowButton: UIButton!
    
    @IBAction func clickedBuyNowButton(sender: AnyObject) {
        FIRAnalytics.logEventWithName(kFIREventSelectContent, parameters: [
            kFIRParameterContentType:"cont",
            kFIRParameterItemID:"1"
            ])
    }
    
    @IBAction func unwindSelectProductViewController(segue: UIStoryboardSegue) {
        // defining method
    }
    
    @IBOutlet weak var unwindToShadeViewController: UIBarButtonItem!
    
    @IBOutlet weak var title1: UITextView!
    
    @IBOutlet weak var title2: UITextView!
    
    @IBOutlet weak var title3: UITextView!
    
    @IBOutlet weak var price: UITextView!
    
    @IBOutlet weak var whatitis: UITextView!
    
    @IBOutlet weak var whatitdoes: UITextView!
    
    var weblink_values: String = String()
    var title1_value: String = String()
    var title2_value: String = String()
    var title3_value:String = String()
    var price_value: String = String()
    var whatitis_value: String = String()
    var whatitdoes_value: String = String()
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.imageView.image = self.image
        webLink = NSURL(string: self.weblink_values)
        
        self.title1.text = self.title1_value
        self.title2.text = self.title2_value
        self.title3.text = self.title3_value
        self.price.text = self.price_value
        self.whatitis.text = self.whatitis_value
        self.whatitdoes.text = self.whatitdoes_value
    }
    
    @IBAction func buyNowButton(sender: AnyObject)
    {
        UIApplication.sharedApplication().openURL(webLink)
    }
    
}