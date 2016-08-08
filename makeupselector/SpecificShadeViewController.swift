//
//  SpecificShadeViewController.swift
//  makeupselector
//
//  Created by Olivia on 6/25/16.
//  Copyright © 2016 Olivia. All rights reserved.
//

import UIKit

class SpecificShadeViewController: UIViewController {
    
    var image = UIImage()
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var buyNowButton: UIButton!
    
    @IBOutlet weak var unwindToShadeViewController: UIBarButtonItem!
    var webLink: NSURL!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.imageView.image = self.image
        
        webLink = NSURL(string: "http://www.sephora.com/amuse-bouche-lipstick-P405057?skuId=1796879&icid2=D%3Dc6%3Aproducts%20grid%3Ap405057")
    }
    
    @IBAction func buyNowButton(sender: AnyObject) {
        UIApplication.sharedApplication().openURL(webLink)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
