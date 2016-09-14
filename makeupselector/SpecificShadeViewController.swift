//
//  SpecificShadeViewController.swift
//  Lippi
//
//  Created by Olivia on 6/25/16.
//  Copyright © 2016 Olivia. All rights reserved.
//

import UIKit

class SpecificShadeViewController: UIViewController {
    
    // Class Variables
    var image = UIImage()
    var webLink: URL!
    var linkValue: String = String()
    var shadeValue: String = String()
    var brandValue: String = String()
    var lineValue:String = String()
    var priceValue: String = String()
    var whatItIsValue: String = String()
    
    // IBOutlets
    @IBOutlet weak var buyNowButton: UIButton!
    @IBOutlet weak var shade: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var whatitis: UITextView!
    @IBOutlet weak var shadeImage: UIImageView!
    @IBOutlet weak var shadeView: UIView!
    @IBOutlet weak var brand: UILabel!

    // @IBOutlet weak var shareButton: UIButton!
    // Opens link to product when a user clicks "Buy Now"
    @IBAction func buyNowButton(_ sender: AnyObject) {
        UIApplication.shared.openURL(webLink)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Sets navigationBar tint color to pink
        navigationController?.navigationBar.tintColor = UIColor(red:0.98, green:0.42, blue:0.42, alpha:1.0)
        
        // Changes font size of price if its width is too small
        price.adjustsFontSizeToFitWidth = true
        price.minimumScaleFactor = 0.5
    }
    
    // Starts whatitis UITextView at top of text
    override func viewDidLayoutSubviews() {
        self.whatitis.setContentOffset(CGPoint.zero, animated: false)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // shareButton.layer.borderWidth = 0.8
        // shareButton.layer.borderColor = UIColor(red:0.98, green:0.42, blue:0.42, alpha:1.0).cgColor
        
        // Adds a cornerRadius to the shadeView and buyNowButton
        shadeView.layer.cornerRadius = 10
        buyNowButton.layer.cornerRadius = 10
        
        // Passes correct variable for each specificShadeVC variable
        self.shadeImage.image = self.image
        webLink = URL(string: self.linkValue)
        self.shade.text = self.shadeValue
        self.brand.text = self.brandValue
        self.price.text = "$\(self.priceValue)"
        self.whatitis.text = self.whatItIsValue
    }
}
