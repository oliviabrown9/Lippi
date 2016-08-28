//
//  SpecificShadeViewController.swift
//  Lippi
//
//  Created by Olivia on 6/25/16.
//  Copyright © 2016 Olivia. All rights reserved.
//

import UIKit

class SpecificShadeViewController: UIViewController {
    
    //Class Variables
    var image = UIImage()
    var webLink: NSURL!
    var linkValue: String = String()
    var shadeValue: String = String()
    var brandValue: String = String()
    var lineValue:String = String()
    var priceValue: String = String()
    var whatItIsValue: String = String()
    
    //IBOutlets
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var buyNowButton: UIButton!
    @IBOutlet weak var title1: UITextView!
    @IBOutlet weak var title2: UITextView!
//    @IBOutlet weak var title3: UITextView!
    @IBOutlet weak var price: UITextView!
    @IBOutlet weak var whatitis: UITextView!
    @IBOutlet weak var imageView2: UIImageView!

    
    //IBActions
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
        self.imageView2.image = self.image
        webLink = NSURL(string: self.linkValue)
        self.title1.text = self.shadeValue
        self.title2.text = self.brandValue
        self.price.text = "$\(self.priceValue)"
        self.whatitis.text = self.whatItIsValue
        
        buyNowButton.layer.cornerRadius = 15
    }
}
