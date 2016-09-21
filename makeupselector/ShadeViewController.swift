//
//  ShadeViewController.swift
//  Lippi
//
//  Created by Olivia on 6/28/16.
//  Copyright © 2016 Olivia. All rights reserved.
//

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
    var temp_detaildata: DetailData = DetailData()
    var detaildata: DetailData = DetailData()
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        let selectedValue = Int(sender.value)
        
        sliderLabel.text = String("$ \(selectedValue)")
        
        self.temp_detaildata.imageArrayRedLipstick.removeAll()
        self.temp_detaildata.imageArrayPinkLipstick.removeAll()
        self.temp_detaildata.imageArrayBerryLipstick.removeAll()
        self.temp_detaildata.imageArrayCoralLipstick.removeAll()
        self.temp_detaildata.imageArrayNudeLipstick.removeAll()
        self.temp_detaildata.imageArrayRedLiquid.removeAll()
        self.temp_detaildata.imageArrayPinkLiquid.removeAll()
        self.temp_detaildata.imageArrayBerryLiquid.removeAll()
        self.temp_detaildata.imageArrayCoralLiquid.removeAll()
        self.temp_detaildata.imageArrayNudeLiquid.removeAll()
        
        self.temp_detaildata.shadeArrayRedLipstick.removeAll()
        self.temp_detaildata.shadeArrayPinkLipstick.removeAll()
        self.temp_detaildata.shadeArrayBerryLipstick.removeAll()
        self.temp_detaildata.shadeArrayCoralLipstick.removeAll()
        self.temp_detaildata.shadeArrayNudeLipstick.removeAll()
        self.temp_detaildata.shadeArrayRedLiquid.removeAll()
        self.temp_detaildata.shadeArrayPinkLiquid.removeAll()
        self.temp_detaildata.shadeArrayBerryLiquid.removeAll()
        self.temp_detaildata.shadeArrayCoralLiquid.removeAll()
        self.temp_detaildata.shadeArrayNudeLiquid.removeAll()
        
        self.temp_detaildata.brandArrayRedLipstick.removeAll()
        self.temp_detaildata.brandArrayPinkLipstick.removeAll()
        self.temp_detaildata.brandArrayBerryLipstick.removeAll()
        self.temp_detaildata.brandArrayCoralLipstick.removeAll()
        self.temp_detaildata.brandArrayNudeLipstick.removeAll()
        self.temp_detaildata.brandArrayRedLiquid.removeAll()
        self.temp_detaildata.brandArrayPinkLiquid.removeAll()
        self.temp_detaildata.brandArrayBerryLiquid.removeAll()
        self.temp_detaildata.brandArrayCoralLiquid.removeAll()
        self.temp_detaildata.brandArrayNudeLiquid.removeAll()
        
        self.temp_detaildata.priceArrayRedLipstick.removeAll()
        self.temp_detaildata.priceArrayPinkLipstick.removeAll()
        self.temp_detaildata.priceArrayBerryLipstick.removeAll()
        self.temp_detaildata.priceArrayCoralLipstick.removeAll()
        self.temp_detaildata.priceArrayNudeLipstick.removeAll()
        self.temp_detaildata.priceArrayRedLiquid.removeAll()
        self.temp_detaildata.priceArrayPinkLiquid.removeAll()
        self.temp_detaildata.priceArrayBerryLiquid.removeAll()
        self.temp_detaildata.priceArrayCoralLiquid.removeAll()
        self.temp_detaildata.priceArrayNudeLiquid.removeAll()
        
        self.temp_detaildata.whatItIsArrayRedLipstick.removeAll()
        self.temp_detaildata.whatItIsArrayPinkLipstick.removeAll()
        self.temp_detaildata.whatItIsArrayBerryLipstick.removeAll()
        self.temp_detaildata.whatItIsArrayCoralLipstick.removeAll()
        self.temp_detaildata.whatItIsArrayNudeLipstick.removeAll()
        self.temp_detaildata.whatItIsArrayRedLiquid.removeAll()
        self.temp_detaildata.whatItIsArrayPinkLiquid.removeAll()
        self.temp_detaildata.whatItIsArrayBerryLiquid.removeAll()
        self.temp_detaildata.whatItIsArrayCoralLiquid.removeAll()
        self.temp_detaildata.whatItIsArrayNudeLiquid.removeAll()
        
        self.temp_detaildata.linkArrayRedLipstick.removeAll()
        self.temp_detaildata.linkArrayPinkLipstick.removeAll()
        self.temp_detaildata.linkArrayBerryLipstick.removeAll()
        self.temp_detaildata.linkArrayCoralLipstick.removeAll()
        self.temp_detaildata.linkArrayNudeLipstick.removeAll()
        self.temp_detaildata.linkArrayRedLiquid.removeAll()
        self.temp_detaildata.linkArrayPinkLiquid.removeAll()
        self.temp_detaildata.linkArrayBerryLiquid.removeAll()
        self.temp_detaildata.linkArrayCoralLiquid.removeAll()
        self.temp_detaildata.linkArrayNudeLiquid.removeAll()
        
        if self.shadeButtonNumber == 1 && productButton == 1 {
            
            for _index in 1...self.detaildata.priceArrayRedLipstick.count {
                
                let new_index = _index  - 1
                
                if Float(selectedValue) >= Float(self.detaildata.priceArrayRedLipstick[new_index]) {
                    
                    self.temp_detaildata.imageArrayRedLipstick.append(self.detaildata.imageArrayRedLipstick[new_index])
                    self.temp_detaildata.shadeArrayRedLipstick.append(self.detaildata.shadeArrayRedLipstick[new_index])
                    self.temp_detaildata.brandArrayRedLipstick.append(self.detaildata.brandArrayRedLipstick[new_index])
                    self.temp_detaildata.priceArrayRedLipstick.append(self.detaildata.priceArrayRedLipstick[new_index])
                    self.temp_detaildata.whatItIsArrayRedLipstick.append(self.detaildata.whatItIsArrayRedLipstick[new_index])
                    self.temp_detaildata.linkArrayRedLipstick.append(self.detaildata.linkArrayRedLipstick[new_index])}}}
        
        
        if self.shadeButtonNumber == 1 && productButton == 2 {
            
            for _index in 1...self.detaildata.priceArrayRedLiquid.count {
                
                let new_index = _index  - 1
                
                if Float(selectedValue) >= Float(self.detaildata.priceArrayRedLiquid[new_index]) {
                    
                    self.temp_detaildata.imageArrayRedLiquid.append(self.detaildata.imageArrayRedLiquid[new_index])
                    self.temp_detaildata.shadeArrayRedLiquid.append(self.detaildata.shadeArrayRedLiquid[new_index])
                    self.temp_detaildata.brandArrayRedLiquid.append(self.detaildata.brandArrayRedLiquid[new_index])
                    self.temp_detaildata.priceArrayRedLiquid.append(self.detaildata.priceArrayRedLiquid[new_index])
                    self.temp_detaildata.whatItIsArrayRedLiquid.append(self.detaildata.whatItIsArrayRedLiquid[new_index])
                    self.temp_detaildata.linkArrayRedLiquid.append(self.detaildata.linkArrayRedLiquid[new_index])}
            }
        }
        
        if self.shadeButtonNumber == 2 && productButton == 1 {
            for _index in 1...self.detaildata.priceArrayPinkLipstick.count {
                let new_index = _index  - 1
                
                if Float(selectedValue) >= Float(self.detaildata.priceArrayPinkLipstick[new_index]) {
                    
                    self.temp_detaildata.imageArrayPinkLipstick.append(self.detaildata.imageArrayPinkLipstick[new_index])
                    self.temp_detaildata.shadeArrayPinkLipstick.append(self.detaildata.shadeArrayPinkLipstick[new_index])
                    self.temp_detaildata.brandArrayPinkLipstick.append(self.detaildata.brandArrayPinkLipstick[new_index])
                    
                    self.temp_detaildata.priceArrayPinkLipstick.append(self.detaildata.priceArrayPinkLipstick[new_index])
                    self.temp_detaildata.whatItIsArrayPinkLipstick.append(self.detaildata.whatItIsArrayPinkLipstick[new_index])
                    self.temp_detaildata.linkArrayPinkLipstick.append(self.detaildata.linkArrayPinkLipstick[new_index])
                }
            }
        }
        if self.shadeButtonNumber == 2 && productButton == 2 {
            for _index in 1...self.detaildata.priceArrayPinkLiquid.count {
                let new_index = _index  - 1
                
                if Float(selectedValue) >= Float(self.detaildata.priceArrayPinkLiquid[new_index]) {
                    
                    self.temp_detaildata.imageArrayPinkLiquid.append(self.detaildata.imageArrayPinkLiquid[new_index])
                    self.temp_detaildata.shadeArrayPinkLiquid.append(self.detaildata.shadeArrayPinkLiquid[new_index])
                    self.temp_detaildata.brandArrayPinkLiquid.append(self.detaildata.brandArrayPinkLiquid[new_index])
                    self.temp_detaildata.priceArrayPinkLiquid.append(self.detaildata.priceArrayPinkLiquid[new_index])
                    self.temp_detaildata.whatItIsArrayPinkLiquid.append(self.detaildata.whatItIsArrayPinkLiquid[new_index])
                    self.temp_detaildata.linkArrayPinkLiquid.append(self.detaildata.linkArrayPinkLiquid[new_index])
                }
            }
        }
        
        if self.shadeButtonNumber == 3 && productButton == 1 {
            for _index in 1...self.detaildata.priceArrayBerryLipstick.count {
                let new_index = _index  - 1
                
                if Float(selectedValue) >= Float(self.detaildata.priceArrayBerryLipstick[new_index]) {
                    self.temp_detaildata.imageArrayBerryLipstick.append(self.detaildata.imageArrayBerryLipstick[new_index])
                    self.temp_detaildata.shadeArrayBerryLipstick.append(self.detaildata.shadeArrayBerryLipstick[new_index])
                    self.temp_detaildata.brandArrayBerryLipstick.append(self.detaildata.brandArrayBerryLipstick[new_index])
                    self.temp_detaildata.priceArrayBerryLipstick.append(self.detaildata.priceArrayBerryLipstick[new_index])
                    self.temp_detaildata.whatItIsArrayBerryLipstick.append(self.detaildata.whatItIsArrayBerryLipstick[new_index])
                    self.temp_detaildata.linkArrayBerryLipstick.append(self.detaildata.linkArrayBerryLipstick[new_index])
                }
            }
        }
        if self.shadeButtonNumber == 3 && productButton == 2 {
            for _index in 1...self.detaildata.priceArrayBerryLiquid.count {
                let new_index = _index  - 1
                
                if Float(selectedValue) >= Float(self.detaildata.priceArrayBerryLiquid[new_index]) {
                    
                    self.temp_detaildata.imageArrayBerryLiquid.append(self.detaildata.imageArrayBerryLiquid[new_index])
                    self.temp_detaildata.shadeArrayBerryLiquid.append(self.detaildata.shadeArrayBerryLiquid[new_index])
                    self.temp_detaildata.brandArrayBerryLiquid.append(self.detaildata.brandArrayBerryLiquid[new_index])
                    self.temp_detaildata.priceArrayBerryLiquid.append(self.detaildata.priceArrayBerryLiquid[new_index])
                    self.temp_detaildata.whatItIsArrayBerryLiquid.append(self.detaildata.whatItIsArrayBerryLiquid[new_index])
                    self.temp_detaildata.linkArrayBerryLiquid.append(self.detaildata.linkArrayBerryLiquid[new_index])
                }
            }
        }
        
        if self.shadeButtonNumber == 4 && productButton == 1 {
            for _index in 1...self.detaildata.priceArrayCoralLipstick.count {
                let new_index = _index  - 1
                
                if Float(selectedValue) >= Float(self.detaildata.priceArrayCoralLipstick[new_index]) {
                    self.temp_detaildata.imageArrayCoralLipstick.append(self.detaildata.imageArrayCoralLipstick[new_index])
                    self.temp_detaildata.shadeArrayCoralLipstick.append(self.detaildata.shadeArrayCoralLipstick[new_index])
                    self.temp_detaildata.brandArrayCoralLipstick.append(self.detaildata.brandArrayCoralLipstick[new_index])
                    self.temp_detaildata.priceArrayCoralLipstick.append(self.detaildata.priceArrayCoralLipstick[new_index])
                    self.temp_detaildata.whatItIsArrayCoralLipstick.append(self.detaildata.whatItIsArrayCoralLipstick[new_index])
                    self.temp_detaildata.linkArrayCoralLipstick.append(self.detaildata.linkArrayCoralLipstick[new_index])
                }
            }
        }
        if self.shadeButtonNumber == 4 && productButton == 2 {
            for _index in 1...self.detaildata.priceArrayCoralLiquid.count {
                let new_index = _index  - 1
                
                if Float(selectedValue) >= Float(self.detaildata.priceArrayCoralLiquid[new_index]) {
                    
                    self.temp_detaildata.imageArrayCoralLiquid.append(self.detaildata.imageArrayCoralLiquid[new_index])
                    self.temp_detaildata.shadeArrayCoralLiquid.append(self.detaildata.shadeArrayCoralLiquid[new_index])
                    self.temp_detaildata.brandArrayCoralLiquid.append(self.detaildata.brandArrayCoralLiquid[new_index])
                    self.temp_detaildata.priceArrayCoralLiquid.append(self.detaildata.priceArrayCoralLiquid[new_index])
                    self.temp_detaildata.whatItIsArrayCoralLiquid.append(self.detaildata.whatItIsArrayCoralLiquid[new_index])
                    self.temp_detaildata.linkArrayCoralLiquid.append(self.detaildata.linkArrayCoralLiquid[new_index])
                }
            }
        }
        
        if self.shadeButtonNumber == 5 && productButton == 1 {
            for _index in 1...self.detaildata.priceArrayNudeLipstick.count {
                let new_index = _index  - 1
                
                if Float(selectedValue) >= Float(self.detaildata.priceArrayNudeLipstick[new_index]) {
                    
                    self.temp_detaildata.imageArrayNudeLipstick.append(self.detaildata.imageArrayNudeLipstick[new_index])
                    self.temp_detaildata.shadeArrayNudeLipstick.append(self.detaildata.shadeArrayNudeLipstick[new_index])
                    self.temp_detaildata.brandArrayNudeLipstick.append(self.detaildata.brandArrayNudeLipstick[new_index])
                    self.temp_detaildata.priceArrayNudeLipstick.append(self.detaildata.priceArrayNudeLipstick[new_index])
                    self.temp_detaildata.whatItIsArrayNudeLipstick.append(self.detaildata.whatItIsArrayNudeLipstick[new_index])
                    self.temp_detaildata.linkArrayNudeLipstick.append(self.detaildata.linkArrayNudeLipstick[new_index])
                }
            }
        }
        if self.shadeButtonNumber == 5 && productButton == 2 {
            for _index in 1...self.detaildata.priceArrayNudeLiquid.count {
                let new_index = _index  - 1
                
                if Float(selectedValue) >= Float(self.detaildata.priceArrayNudeLiquid[new_index]) {
                    
                    self.temp_detaildata.imageArrayNudeLiquid.append(self.detaildata.imageArrayNudeLiquid[new_index])
                    self.temp_detaildata.shadeArrayNudeLiquid.append(self.detaildata.shadeArrayNudeLiquid[new_index])
                    self.temp_detaildata.brandArrayNudeLiquid.append(self.detaildata.brandArrayNudeLiquid[new_index])
                    self.temp_detaildata.priceArrayNudeLiquid.append(self.detaildata.priceArrayNudeLiquid[new_index])
                    self.temp_detaildata.whatItIsArrayNudeLiquid.append(self.detaildata.whatItIsArrayNudeLiquid[new_index])
                    self.temp_detaildata.linkArrayNudeLiquid.append(self.detaildata.linkArrayNudeLiquid[new_index])
                }
            }
        }
        self.collectionView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.tintColor = UIColor(red:0.98, green:0.42, blue:0.42, alpha:1.0)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if self.shadeButtonNumber == 1 && productButton == 1 {
            return self.temp_detaildata.priceArrayRedLipstick.count
        }
        if self.shadeButtonNumber == 1 && productButton == 2 {
            return self.temp_detaildata.priceArrayRedLiquid.count
        }
        if self.shadeButtonNumber == 2 && productButton == 1 {
            return self.temp_detaildata.priceArrayPinkLipstick.count
        }
        if self.shadeButtonNumber == 2 && productButton == 2 {
            return self.temp_detaildata.priceArrayPinkLiquid.count
        }
        if self.shadeButtonNumber == 3 && productButton == 1 {
            return self.temp_detaildata.priceArrayBerryLipstick.count
        }
        if self.shadeButtonNumber == 3 && productButton == 2 {
            return self.temp_detaildata.priceArrayBerryLiquid.count
        }
        if self.shadeButtonNumber == 4 && productButton == 1 {
            return self.temp_detaildata.priceArrayCoralLipstick.count
        }
        if self.shadeButtonNumber == 4 && productButton == 2 {
            return self.temp_detaildata.priceArrayCoralLiquid.count
        }
        if self.shadeButtonNumber == 5 && productButton == 1 {
            return self.temp_detaildata.priceArrayNudeLipstick.count
        }
        if self.shadeButtonNumber == 5 && productButton == 2 {
            return self.temp_detaildata.priceArrayNudeLiquid.count
        }
        return 0
    }
    
//        private func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
//    
//            let screenSize: CGRect = UIScreen.main.bounds
//            let screenWidth = screenSize.width
//            return CGSize(width: (screenWidth-45)/3, height: (screenWidth-45)/3);
//        }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
            as! CollectionViewCell
        if self.shadeButtonNumber == 1 && productButton == 1 {
            cell.imageView?.image = UIImage(named: self.temp_detaildata.imageArrayRedLipstick[(indexPath as NSIndexPath).row])
        }else if self.shadeButtonNumber == 1 && productButton == 2 {
            cell.imageView?.image = UIImage(named: self.temp_detaildata.imageArrayRedLiquid[(indexPath as NSIndexPath).row])
        }
            
            
        else if self.shadeButtonNumber == 2 && productButton == 1 {
            cell.imageView?.image = UIImage(named: self.temp_detaildata.imageArrayPinkLipstick[(indexPath as NSIndexPath).row])
        }else if self.shadeButtonNumber == 2 && productButton == 2 {
            cell.imageView?.image = UIImage(named: self.temp_detaildata.imageArrayPinkLiquid[(indexPath as NSIndexPath).row])
        }
            
        else if self.shadeButtonNumber == 3 && productButton == 1 {
            cell.imageView?.image = UIImage(named: self.temp_detaildata.imageArrayBerryLipstick[(indexPath as NSIndexPath).row])
        }else if self.shadeButtonNumber == 3 && productButton == 2 {
            cell.imageView?.image = UIImage(named: self.temp_detaildata.imageArrayBerryLiquid[(indexPath as NSIndexPath).row])
        }
            
        else if self.shadeButtonNumber == 4 && productButton == 1 {
            cell.imageView?.image = UIImage(named: self.temp_detaildata.imageArrayCoralLipstick[(indexPath as NSIndexPath).row])
        }else if self.shadeButtonNumber == 4 && productButton == 2 {
            cell.imageView?.image = UIImage(named: self.temp_detaildata.imageArrayCoralLiquid[(indexPath as NSIndexPath).row])
        }
            
        else if self.shadeButtonNumber == 5 && productButton == 1 {
            cell.imageView?.image = UIImage(named: self.temp_detaildata.imageArrayNudeLipstick[(indexPath as NSIndexPath).row])
        }else if self.shadeButtonNumber == 5 && productButton == 2 {
            cell.imageView?.image = UIImage(named: self.temp_detaildata.imageArrayNudeLiquid[(indexPath as NSIndexPath).row])
        }
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
            
            if self.shadeButtonNumber == 1 && productButton == 1 {
                vc.image = UIImage(named: self.temp_detaildata.imageArrayRedLipstick[(indexPath as NSIndexPath).row])!
                vc.shadeValue = self.temp_detaildata.shadeArrayRedLipstick[(indexPath as NSIndexPath).row]
                vc.brandValue = self.temp_detaildata.brandArrayRedLipstick[(indexPath as NSIndexPath).row]
                vc.priceValue = self.temp_detaildata.priceArrayRedLipstick[(indexPath as NSIndexPath).row]
                vc.whatItIsValue = self.temp_detaildata.whatItIsArrayRedLipstick[(indexPath as NSIndexPath).row]
                vc.linkValue = self.temp_detaildata.linkArrayRedLipstick[(indexPath as NSIndexPath).row]
            }else if self.shadeButtonNumber == 1 && productButton == 2 {
                vc.image = UIImage(named: self.temp_detaildata.imageArrayRedLiquid[(indexPath as NSIndexPath).row])!
                vc.shadeValue = self.temp_detaildata.shadeArrayRedLiquid[(indexPath as NSIndexPath).row]
                vc.brandValue = self.temp_detaildata.brandArrayRedLiquid[(indexPath as NSIndexPath).row]
                vc.priceValue = self.temp_detaildata.priceArrayRedLiquid[(indexPath as NSIndexPath).row]
                vc.whatItIsValue = self.temp_detaildata.whatItIsArrayRedLiquid[(indexPath as NSIndexPath).row]
                vc.linkValue = self.temp_detaildata.linkArrayRedLiquid[(indexPath as NSIndexPath).row]
                
            }else if self.shadeButtonNumber == 2 && productButton == 1 {
                vc.image = UIImage(named: self.temp_detaildata.imageArrayPinkLipstick[(indexPath as NSIndexPath).row])!
                vc.shadeValue = self.temp_detaildata.shadeArrayPinkLipstick[(indexPath as NSIndexPath).row]
                vc.brandValue = self.temp_detaildata.brandArrayPinkLipstick[(indexPath as NSIndexPath).row]
                vc.priceValue = self.temp_detaildata.priceArrayPinkLipstick[(indexPath as NSIndexPath).row]
                vc.whatItIsValue = self.temp_detaildata.whatItIsArrayPinkLipstick[(indexPath as NSIndexPath).row]
                vc.linkValue = self.temp_detaildata.linkArrayPinkLipstick[(indexPath as NSIndexPath).row]
            }else if self.shadeButtonNumber == 2 && productButton == 2 {
                vc.image = UIImage(named: self.temp_detaildata.imageArrayPinkLiquid[(indexPath as NSIndexPath).row])!
                vc.shadeValue = self.temp_detaildata.shadeArrayPinkLiquid[(indexPath as NSIndexPath).row]
                vc.brandValue = self.temp_detaildata.brandArrayPinkLiquid[(indexPath as NSIndexPath).row]
                vc.priceValue = self.temp_detaildata.priceArrayPinkLiquid[(indexPath as NSIndexPath).row]
                vc.whatItIsValue = self.temp_detaildata.whatItIsArrayPinkLiquid[(indexPath as NSIndexPath).row]
                vc.linkValue = self.temp_detaildata.linkArrayPinkLiquid[(indexPath as NSIndexPath).row]
                
            }else if self.shadeButtonNumber == 3 && productButton == 1 {
                vc.image = UIImage(named: self.temp_detaildata.imageArrayBerryLipstick[(indexPath as NSIndexPath).row])!
                vc.shadeValue = self.temp_detaildata.shadeArrayBerryLipstick[(indexPath as NSIndexPath).row]
                vc.brandValue = self.temp_detaildata.brandArrayBerryLipstick[(indexPath as NSIndexPath).row]
                vc.priceValue = self.temp_detaildata.priceArrayBerryLipstick[(indexPath as NSIndexPath).row]
                vc.whatItIsValue = self.temp_detaildata.whatItIsArrayBerryLipstick[(indexPath as NSIndexPath).row]
                vc.linkValue = self.temp_detaildata.linkArrayBerryLipstick[(indexPath as NSIndexPath).row]
            }else if self.shadeButtonNumber == 3 && productButton == 2 {
                vc.image = UIImage(named: self.temp_detaildata.imageArrayBerryLiquid[(indexPath as NSIndexPath).row])!
                vc.shadeValue = self.temp_detaildata.shadeArrayBerryLiquid[(indexPath as NSIndexPath).row]
                vc.brandValue = self.temp_detaildata.brandArrayBerryLiquid[(indexPath as NSIndexPath).row]
                vc.priceValue = self.temp_detaildata.priceArrayBerryLiquid[(indexPath as NSIndexPath).row]
                vc.whatItIsValue = self.temp_detaildata.whatItIsArrayBerryLiquid[(indexPath as NSIndexPath).row]
                vc.linkValue = self.temp_detaildata.linkArrayBerryLiquid[(indexPath as NSIndexPath).row]
                
            }else if self.shadeButtonNumber == 4 && productButton == 1 {
                vc.image = UIImage(named: self.temp_detaildata.imageArrayCoralLipstick[(indexPath as NSIndexPath).row])!
                vc.shadeValue = self.temp_detaildata.shadeArrayCoralLipstick[(indexPath as NSIndexPath).row]
                vc.brandValue = self.temp_detaildata.brandArrayCoralLipstick[(indexPath as NSIndexPath).row]
                vc.priceValue = self.temp_detaildata.priceArrayCoralLipstick[(indexPath as NSIndexPath).row]
                vc.whatItIsValue = self.temp_detaildata.whatItIsArrayCoralLipstick[(indexPath as NSIndexPath).row]
                vc.linkValue = self.temp_detaildata.linkArrayCoralLipstick[(indexPath as NSIndexPath).row]
            }else if self.shadeButtonNumber == 4 && productButton == 2 {
                vc.image = UIImage(named: self.temp_detaildata.imageArrayCoralLiquid[(indexPath as NSIndexPath).row])!
                vc.shadeValue = self.temp_detaildata.shadeArrayCoralLiquid[(indexPath as NSIndexPath).row]
                vc.brandValue = self.temp_detaildata.brandArrayCoralLiquid[(indexPath as NSIndexPath).row]
                vc.priceValue = self.temp_detaildata.priceArrayCoralLiquid[(indexPath as NSIndexPath).row]
                vc.whatItIsValue = self.temp_detaildata.whatItIsArrayCoralLiquid[(indexPath as NSIndexPath).row]
                vc.linkValue = self.temp_detaildata.linkArrayCoralLiquid[(indexPath as NSIndexPath).row]
                
            }else if self.shadeButtonNumber == 5 && productButton == 1 {
                vc.image = UIImage(named: self.temp_detaildata.imageArrayNudeLipstick[(indexPath as NSIndexPath).row])!
                vc.shadeValue = self.temp_detaildata.shadeArrayNudeLipstick[(indexPath as NSIndexPath).row]
                vc.brandValue = self.temp_detaildata.brandArrayNudeLipstick[(indexPath as NSIndexPath).row]
                vc.priceValue = self.temp_detaildata.priceArrayNudeLipstick[(indexPath as NSIndexPath).row]
                vc.whatItIsValue = self.temp_detaildata.whatItIsArrayNudeLipstick[(indexPath as NSIndexPath).row]
                vc.linkValue = self.temp_detaildata.linkArrayNudeLipstick[(indexPath as NSIndexPath).row]
            }else if self.shadeButtonNumber == 5 && productButton == 2 {
                vc.image = UIImage(named: self.temp_detaildata.imageArrayNudeLiquid[(indexPath as NSIndexPath).row])!
                vc.shadeValue = self.temp_detaildata.shadeArrayNudeLiquid[(indexPath as NSIndexPath).row]
                vc.brandValue = self.temp_detaildata.brandArrayNudeLiquid[(indexPath as NSIndexPath).row]
                vc.priceValue = self.temp_detaildata.priceArrayNudeLiquid[(indexPath as NSIndexPath).row]
                vc.whatItIsValue = self.temp_detaildata.whatItIsArrayNudeLiquid[(indexPath as NSIndexPath).row]
                vc.linkValue = self.temp_detaildata.linkArrayNudeLiquid[(indexPath as NSIndexPath).row]
            }}
    }
}
