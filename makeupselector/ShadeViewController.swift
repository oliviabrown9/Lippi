//
//  Lippi
//  ShadeViewController.swift
//
//  olivia@lippi.co
//  Copyright © 2017 Olivia Brown. All rights reserved.
//

import Foundation
import UIKit

class ShadeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout
{
    var productButtonNumber: Int = Int()
    var tempDetaildata: [NSDictionary] = [NSDictionary]()
    var detaildata: NSArray = []
    var priceArray: [Float] = []
    
  
  @IBOutlet weak var collectionViewWidth: NSLayoutConstraint!
  
  
  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews();
    if self.view.bounds.size.width / 2.0 < 182 {
      self.collectionViewWidth.constant = self.view.bounds.size.width;
    }
    else {
      self.collectionViewWidth.constant = 364;
    }
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    if self.view.bounds.size.width / 2.0 < 182 {
      return CGSize(width: self.view.bounds.size.width / 2.0, height: 200)
    }
    else {
      return CGSize(width: 182, height: 200)
    }
  }
    
    @IBOutlet weak var minPrice: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    // Query products again if priceValue changes
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        let selectedValue = Int(sender.value)
        
        sliderLabel.text = String("$ \(selectedValue)")
        self.tempDetaildata = []
        
        for (item) in self.detaildata
        {
            let productType: Int? = (item as! NSDictionary).object(forKey: "productType") as? Int
            let shadeType: Int? = (item as! NSDictionary).object(forKey: "shadeType") as? Int
            let priceValue: Float? = (item as! NSDictionary).object(forKey: "price") as? Float

          if productButton != 7 && shadeButton != 7
          {
            if productType == productButton && shadeType == shadeButton && Float(selectedValue) >= priceValue! {
              self.tempDetaildata.append(item as! NSDictionary)
            }
          }
          else {
            if productButton == 7 {
              if (shadeButton == 7) {
                if Float(selectedValue) >= priceValue! {
                  self.tempDetaildata.append(item as! NSDictionary)
                }
              }
              else {
                if shadeType == shadeButton {
                  if (Float(selectedValue) >= priceValue!) {
                    self.tempDetaildata.append(item as! NSDictionary)
                  }
                }
              }
            }
            else {
              if (shadeButton == 7) {
                if productButton == productType {
                  if (Float(selectedValue) >= priceValue!) {
                    self.tempDetaildata.append(item as! NSDictionary)
                  }
                }
              }
              else {
                if productType == productButton && shadeType == shadeButton {
                  if (Float(selectedValue) >= priceValue!) {
                    self.tempDetaildata.append(item as! NSDictionary)
                  }
                }
              }
            }
          }
        }
        self.collectionView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.getData()
        
        tempDetaildata.shuffle()
        self.automaticallyAdjustsScrollViewInsets = false
        
        let minValue = priceArray.min()
        let maxValue = priceArray.max()
        slider.maximumValue = maxValue!
        slider.minimumValue = minValue!
        slider.value = maxValue!
        minPrice.text = "$\(Int(minValue!))"
        sliderLabel.text = "$\(Int(maxValue!))"
    }
    
    func getData() {
        let filePath = Bundle.main.path(forResource: "final", ofType: "json")
        let data = NSData(contentsOfFile: filePath!)
        
        do {
            let parsedData = try JSONSerialization.jsonObject(with: data! as Data, options: .allowFragments) as! NSArray
            
            self.detaildata = parsedData;
            
        } catch _ as NSError {
            // error handling
        }
        
        for (item) in self.detaildata
        {
            let productType: Int! = (item as! NSDictionary).object(forKey: "productType") as! Int
            let shadeType: Int! = (item as! NSDictionary).object(forKey: "shadeType") as! Int
            
            if productButton != 7 && shadeButton != 7
            {
              if productType == productButton && shadeType == shadeButton {
                  self.tempDetaildata.append(item as! NSDictionary)
              }
            }
            else {
              if productButton == 7 {
                if (shadeButton == 7) {
                  self.tempDetaildata.append(item as! NSDictionary)
                }
                else {
                  if shadeType == shadeButton {
                    self.tempDetaildata.append(item as! NSDictionary)
                  }
                }
              }
              else {
                if (shadeButton == 7) {
                  if productButton == productType {
                    self.tempDetaildata.append(item as! NSDictionary)
                  }
                }
                else {
                  if productType == productButton && shadeType == shadeButton {
                    self.tempDetaildata.append(item as! NSDictionary)
                  }
                }
              }
            }
        }
        
        for (item) in self.tempDetaildata {
            let priceFloat: Float? = (item).object(forKey: "price") as? Float
            priceArray.append(priceFloat!)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return self.tempDetaildata.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
            as! CollectionViewCell
        let itemData = self.tempDetaildata as [NSDictionary]
        
        let productImageStr = itemData[indexPath.row]["productImage"] as! String
        cell.productImageView.downloadedFrom(link: "\(productImageStr)")
        
        let shadeCode = itemData[indexPath.row]["shadeImage"] as! String
        let shadeColor = hexStringToUIColor(hex: shadeCode)
        cell.shadeView.backgroundColor = shadeColor
        
        cell.brandLabel?.text = (self.tempDetaildata[indexPath.row]).object(forKey: "brandName") as? String
        
        let priceLabelInt = (self.tempDetaildata[indexPath.row]).object(forKey: "price") as! Int
        cell.priceLabel?.text = "$ \(priceLabelInt)"
        
        return cell
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
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "showImage", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "showImage"
        {
            let indexPaths = self.collectionView!.indexPathsForSelectedItems!
            let indexPath = indexPaths[0] as IndexPath
            let vc = segue.destination as! SpecificShadeViewController
            
            vc.imageUrl = (self.tempDetaildata[indexPath.row]).object(forKey: "productImage") as! String
            vc.shadeCode = (self.tempDetaildata[indexPath.row]).object(forKey: "shadeImage") as! String
            vc.shadeValue = (self.tempDetaildata[indexPath.row]).object(forKey: "shadeName") as! String
            vc.brandValue = (self.tempDetaildata[indexPath.row]).object(forKey: "brandName") as! String
            let priceValue: Int? = (self.tempDetaildata[indexPath.row]).object(forKey: "price") as? Int
            let ratingValue: Double? = (self.tempDetaildata[indexPath.row]).object(forKey: "rating") as? Double
            vc.priceValue = String(priceValue!)
            vc.ratingValue = ratingValue!
            vc.whatItIsValue = (self.tempDetaildata[indexPath.row]).object(forKey: "description") as! String
            vc.linkValue = (self.tempDetaildata[indexPath.row]).object(forKey: "link") as! String
        }
    }
}
extension UIImageView {
    func downloadedFrom(url: URL, contentMode mode: UIViewContentMode = .scaleAspectFit) {
        contentMode = mode
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard
                let httpURLResponse = response as? HTTPURLResponse, httpURLResponse.statusCode == 200,
                let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
                let data = data, error == nil,
                let image = UIImage(data: data)
                else { return }
            DispatchQueue.main.async() { () -> Void in
                self.image = image
            }
            }.resume()
    }
    func downloadedFrom(link: String, contentMode mode: UIViewContentMode = .scaleAspectFit) {
        guard let url = URL(string: link) else { return }
        downloadedFrom(url: url, contentMode: mode)
    }
}

extension MutableCollection where Indices.Iterator.Element == Index {
    /// Shuffles the contents of this collection.
    mutating func shuffle() {
        let c = count
        guard c > 1 else { return }
        
        for (firstUnshuffled , unshuffledCount) in zip(indices, stride(from: c, to: 1, by: -1)) {
            let d: IndexDistance = numericCast(arc4random_uniform(numericCast(unshuffledCount)))
            guard d != 0 else { continue }
            let i = index(firstUnshuffled, offsetBy: d)
            swap(&self[firstUnshuffled], &self[i])
        }
    }
}
