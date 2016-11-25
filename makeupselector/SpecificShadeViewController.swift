//
//  Lippi
//  SpecificShadeViewController.swift
//
//  obrown917@gmail.com
//  Copyright © 2016 Olivia Brown. All rights reserved.
//

import UIKit

class SpecificShadeViewController: UIViewController {
    
    // Class Variables
    var image = UIImage()
    var imageUrl: String = String()
    var shadeCode: String = String()
    
    var webLink: URL!
    var linkValue: String = String()
    var shadeValue: String = String()
    var brandValue: String = String()
    var lineValue:String = String()
    var priceValue: String = String()
    var whatItIsValue: String = String()
    var ratingValue: Double = Double()
    
    @IBOutlet weak var ratingView: CosmosView!

    // Defining IBOutlets
    @IBOutlet weak var buyNowButton: UIButton!
    @IBOutlet weak var shade: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var whatitis: UITextView!
    @IBOutlet weak var shadeView: UIView!
    @IBOutlet weak var brand: UILabel!
    @IBOutlet weak var productImage: UIImageView!
    
    // Opens link to product when a user clicks "Buy Now"
    @IBAction func buyNowButton(_ sender: AnyObject) {
        UIApplication.shared.openURL(webLink)
    }
    
    // Starts whatitis UITextView at top of text
    override func viewDidLayoutSubviews() {
        self.whatitis.setContentOffset(CGPoint.zero, animated: false)
    }
    
    func hexStringToUIColor (hex:String) -> UIColor {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if ((cString.characters.count) != 6) {
            return UIColor.white
        }
        
        var rgbValue:UInt32 = 0
        Scanner(string: cString).scanHexInt32(&rgbValue)
        
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        ratingView.rating = ratingValue
        
        // Adds a cornerRadius to the shadeView and buyNowButton
        shadeView.layer.cornerRadius = 10
        buyNowButton.layer.cornerRadius = 10
        
        // Passes correct variable for each specificShadeVC variable
        let productUrl = self.imageUrl
        self.productImage.downloadedFrom(link: "\(productUrl)")
        
        let shadeColor = hexStringToUIColor(hex: shadeCode)
        self.shadeView.backgroundColor = shadeColor
        
        webLink = URL(string: self.linkValue)
        self.shade.text = self.shadeValue
        self.brand.text = self.brandValue
        self.price.text = "$\(self.priceValue)"
        self.whatitis.text = self.whatItIsValue
    }
}
