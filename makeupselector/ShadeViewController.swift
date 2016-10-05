//
//  ShadeViewController.swift
//  Lippi
//
//  Created by Olivia on 6/28/16.
//  Copyright © 2016 Olivia. All rights reserved.
//
import Foundation

import UIKit

fileprivate func < <T : Comparable>(lhs: T?, rhs: T?) -> Bool {
    switch (lhs, rhs) {
    case let (l?, r?):
        return l < r
    case (nil, _?):
        return true
    default:
        return false
    }
}

fileprivate func >= <T : Comparable>(lhs: T?, rhs: T?) -> Bool {
    switch (lhs, rhs) {
    case let (l?, r?):
        return l >= r
    default:
        return !(lhs < rhs)
    }
}

class ShadeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource
{
    var shadeButtonNumber:Int = Int()
    var productButtonNumber: Int = Int()
    var Slider_selectedvarue = Int()
    
    var temp_detaildata: [NSDictionary] = [NSDictionary]()
    var detaildata: NSArray = []
    
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        let selectedValue = Int(sender.value)
        
        sliderLabel.text = String("$ \(selectedValue)")
        self.temp_detaildata = []
        
        for (item) in self.detaildata
        {
            let productType: Int? = (item as! NSDictionary).object(forKey: "productType") as? Int
            let shadeType: Int? = (item as! NSDictionary).object(forKey: "shadeType") as? Int
            let priceValue: Float? = (item as! NSDictionary).object(forKey: "price") as? Float

            if productType == productButton && shadeType == self.shadeButtonNumber && Float(selectedValue) >= priceValue{
                self.temp_detaildata.append(item as! NSDictionary)
            }
        }
        
        self.collectionView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.getData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.tintColor = UIColor(red:0.98, green:0.42, blue:0.42, alpha:1.0)
    }
    
    func getData() {
        let filePath = Bundle.main.path(forResource: "final", ofType: "json")
        let data = NSData(contentsOfFile: filePath!)
        
        do {
            let parsedData = try JSONSerialization.jsonObject(with: data! as Data, options: .allowFragments) as! NSArray
            
            self.detaildata = parsedData;
            
        } catch let error as NSError {
            print(error)
        }
        
        for (item) in self.detaildata
        {
            let productType: Int? = (item as! NSDictionary).object(forKey: "productType") as? Int
            let shadeType: Int? = (item as! NSDictionary).object(forKey: "shadeType") as? Int

            if productType == productButton && shadeType == self.shadeButtonNumber {
                self.temp_detaildata.append(item as! NSDictionary)
            }
        }
        
        print(self.temp_detaildata);
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return self.temp_detaildata.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
            as! CollectionViewCell
        let itemData = self.temp_detaildata as [NSDictionary]
        
        let productImageStr = itemData[indexPath.row]["productImage"] as! String
        let prourl = NSURL(string: productImageStr)
        cell.productImageView?.sd_setImage(with: prourl as URL!)
        
        let shadeImageStr = itemData[indexPath.row]["shadeImage"] as! String
        let shadeurl = NSURL(string: shadeImageStr)
        cell.imageView?.sd_setImage(with: shadeurl as URL!)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "showImage", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "showImage"
        {
            let indexPaths = self.collectionView!.indexPathsForSelectedItems!
            let indexPath = indexPaths[0] as IndexPath
            let vc = segue.destination as! SpecificShadeViewController
            
            vc.imageUrl = (self.temp_detaildata[indexPath.row]).object(forKey: "productImage") as! String
            vc.shadeUrl = (self.temp_detaildata[indexPath.row]).object(forKey: "shadeImage") as! String
            vc.shadeValue = (self.temp_detaildata[indexPath.row]).object(forKey: "shadeName") as! String
            vc.brandValue = (self.temp_detaildata[indexPath.row]).object(forKey: "brandName") as! String
            let priceValue: Int? = (self.temp_detaildata[indexPath.row]).object(forKey: "price") as? Int
            vc.priceValue = String(priceValue!)
            vc.whatItIsValue = (self.temp_detaildata[indexPath.row]).object(forKey: "description") as! String
            vc.linkValue = (self.temp_detaildata[indexPath.row]).object(forKey: "link") as! String
        }
        
    }
}
