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
    
    // IBOutlets
//    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var buyNowButton: UIButton!
    @IBOutlet weak var title1: UITextView!
    @IBOutlet weak var title2: UITextView!
//    @IBOutlet weak var price: UITextView!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var whatitis: UITextView!
    @IBOutlet weak var imageView2: UIImageView!
    @IBOutlet weak var shadeView: UIView!

    //Opens link to product when a user clicks "Buy Now"
    @IBAction func buyNowButton(sender: AnyObject) {
        UIApplication.sharedApplication().openURL(webLink)
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        //Sets navigationBar tint color to pink
        navigationController?.navigationBar.tintColor = UIColor(red:0.98, green:0.42, blue:0.42, alpha:1.0)
        
        //Disables whatitis textfield scrolling - fixes error of poorly formatted text
        whatitis.scrollEnabled = false
        
        //idk man
        price.adjustsFontSizeToFitWidth = true
        price.minimumScaleFactor = 0.5

    }
    
    override func viewDidAppear(animated: Bool) {
        //Enables whatitis textfield scrolling - fixes error of poorly formatted text
        whatitis.scrollEnabled = true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Adds a cornerRadius to the shadeView and buyNowButton
        shadeView.layer.cornerRadius = 10
        buyNowButton.layer.cornerRadius = 15
        
        //Passes correct variable for each specificShadeVC variable
//        self.imageView.image = self.image
        self.imageView2.image = self.image
        webLink = NSURL(string: self.linkValue)
        self.title1.text = self.shadeValue
        self.title2.text = self.brandValue
        self.price.text = "$\(self.priceValue)"
        self.whatitis.text = self.whatItIsValue
    }
}
