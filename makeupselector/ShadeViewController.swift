import UIKit


class ShadeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource
{
    var shadeButtonNumber:Int = Int()
    var productButtonNumber: Int = Int()
    var Slider_selectedvarue = Int()
    var temp_detaildata: DetailData = DetailData()
    
    var detaildata: DetailData = DetailData()
    
    @IBAction func unwindShadeViewController(segue: UIStoryboardSegue) {
        // defining method
    }
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBAction func sliderValueChanged(sender: UISlider) {
        let selectedValue = Int(sender.value)
        
        sliderLabel.text = String("$ \(selectedValue)")
        
        self.temp_detaildata.imageArrayRedLipstick.removeAll()
        self.temp_detaildata.imageArrayPinkLipstick.removeAll()
        self.temp_detaildata.imageArrayBerryLipstick.removeAll()
        self.temp_detaildata.imageArrayCoralLipstick.removeAll()
        self.temp_detaildata.imageArrayNudeLipstick.removeAll()
        self.temp_detaildata.imageArrayRedLiquid.removeAll()
        
        self.temp_detaildata.shadeArrayRedLipstick.removeAll()
        self.temp_detaildata.shadeArrayPinkLipstick.removeAll()
        self.temp_detaildata.shadeArrayBerryLipstick.removeAll()
        self.temp_detaildata.shadeArrayCoralLipstick.removeAll()
        self.temp_detaildata.shadeArrayNudeLipstick.removeAll()
        self.temp_detaildata.shadeArrayRedLiquid.removeAll()
        
        self.temp_detaildata.brandArrayRedLipstick.removeAll()
        self.temp_detaildata.brandArrayPinkLipstick.removeAll()
        self.temp_detaildata.brandArrayBerryLipstick.removeAll()
        self.temp_detaildata.brandArrayCoralLipstick.removeAll()
        self.temp_detaildata.brandArrayNudeLipstick.removeAll()
        self.temp_detaildata.brandArrayRedLiquid.removeAll()
        
        self.temp_detaildata.lineArrayRedLipstick.removeAll()
        self.temp_detaildata.lineArrayPinkLipstick.removeAll()
        self.temp_detaildata.lineArrayBerryLipstick.removeAll()
        self.temp_detaildata.lineArrayCoralLipstick.removeAll()
        self.temp_detaildata.lineArrayNudeLipstick.removeAll()
        self.temp_detaildata.lineArrayRedLiquid.removeAll()
        
        self.temp_detaildata.priceArrayRedLipstick.removeAll()
        self.temp_detaildata.priceArrayPinkLipstick.removeAll()
        self.temp_detaildata.priceArrayBerryLipstick.removeAll()
        self.temp_detaildata.priceArrayCoralLipstick.removeAll()
        self.temp_detaildata.priceArrayNudeLipstick.removeAll()
        self.temp_detaildata.priceArrayRedLiquid.removeAll()
        
        self.temp_detaildata.whatItIsArrayRedLipstick.removeAll()
        self.temp_detaildata.whatItIsArrayPinkLipstick.removeAll()
        self.temp_detaildata.whatItIsArrayBerryLipstick.removeAll()
        self.temp_detaildata.whatItIsArrayCoralLipstick.removeAll()
        self.temp_detaildata.whatItIsArrayNudeLipstick.removeAll()
        self.temp_detaildata.whatItIsArrayRedLiquid.removeAll()
        
        self.temp_detaildata.whatItDoesArrayRedLipstick.removeAll()
        self.temp_detaildata.whatItDoesArrayPinkLipstick.removeAll()
        self.temp_detaildata.whatItDoesArrayBerryLipstick.removeAll()
        self.temp_detaildata.whatItDoesArrayCoralLipstick.removeAll()
        self.temp_detaildata.whatItDoesArrayNudeLipstick.removeAll()
        self.temp_detaildata.whatItDoesArrayRedLiquid.removeAll()
        
        self.temp_detaildata.linkArrayRedLipstick.removeAll()
        self.temp_detaildata.linkArrayPinkLipstick.removeAll()
        self.temp_detaildata.linkArrayBerryLipstick.removeAll()
        self.temp_detaildata.linkArrayCoralLipstick.removeAll()
        self.temp_detaildata.linkArrayNudeLipstick.removeAll()
        self.temp_detaildata.linkArrayRedLiquid.removeAll()
        
        if self.shadeButtonNumber == 1 && productButton == 1 {
            
            for _index in 1...self.detaildata.priceArrayRedLipstick.count {
                
                let new_index = _index  - 1
                
                if Float(selectedValue) >= Float(self.detaildata.priceArrayRedLipstick[new_index]) {
                    
                    self.temp_detaildata.imageArrayRedLipstick.append(self.detaildata.imageArrayRedLipstick[new_index])
                    self.temp_detaildata.shadeArrayRedLipstick.append(self.detaildata.shadeArrayRedLipstick[new_index])
                    self.temp_detaildata.brandArrayRedLipstick.append(self.detaildata.brandArrayRedLipstick[new_index])
                    self.temp_detaildata.lineArrayRedLipstick.append(self.detaildata.lineArrayRedLipstick[new_index])
                    self.temp_detaildata.priceArrayRedLipstick.append(self.detaildata.priceArrayRedLipstick[new_index])
                    self.temp_detaildata.whatItIsArrayRedLipstick.append(self.detaildata.whatItIsArrayRedLipstick[new_index])
                    self.temp_detaildata.whatItDoesArrayRedLipstick.append(self.detaildata.whatItDoesArrayRedLipstick[new_index])
                    self.temp_detaildata.linkArrayRedLipstick.append(self.detaildata.linkArrayRedLipstick[new_index])}}}
        
        
        if self.shadeButtonNumber == 1 && productButton == 2 {
            
            for _index in 1...self.detaildata.priceArrayRedLiquid.count {
                
                let new_index = _index  - 1
                
                if Float(selectedValue) >= Float(self.detaildata.priceArrayRedLiquid[new_index]) {
                    
                    self.temp_detaildata.imageArrayRedLiquid.append(self.detaildata.imageArrayRedLiquid[new_index])
                    self.temp_detaildata.shadeArrayRedLiquid.append(self.detaildata.shadeArrayRedLiquid[new_index])
                    self.temp_detaildata.brandArrayRedLiquid.append(self.detaildata.brandArrayRedLiquid[new_index])
                    self.temp_detaildata.lineArrayRedLiquid.append(self.detaildata.lineArrayRedLiquid[new_index])
                    self.temp_detaildata.priceArrayRedLiquid.append(self.detaildata.priceArrayRedLiquid[new_index])
                    self.temp_detaildata.whatItIsArrayRedLiquid.append(self.detaildata.whatItIsArrayRedLiquid[new_index])
                    self.temp_detaildata.whatItDoesArrayRedLiquid.append(self.detaildata.whatItDoesArrayRedLiquid[new_index])
                    self.temp_detaildata.linkArrayRedLiquid.append(self.detaildata.linkArrayRedLiquid[new_index])}
            }
        }

        
        if self.shadeButtonNumber == 2 {
            for _index in 1...self.detaildata.priceArrayPinkLipstick.count {
                let new_index = _index  - 1
                
                if Float(selectedValue) >= Float(self.detaildata.priceArrayPinkLipstick[new_index]) {

                    self.temp_detaildata.imageArrayPinkLipstick.append(self.detaildata.imageArrayPinkLipstick[new_index])
                    self.temp_detaildata.shadeArrayPinkLipstick.append(self.detaildata.shadeArrayPinkLipstick[new_index])
                    self.temp_detaildata.brandArrayPinkLipstick.append(self.detaildata.brandArrayPinkLipstick[new_index])
                    self.temp_detaildata.lineArrayPinkLipstick.append(self.detaildata.lineArrayPinkLipstick[new_index])
                    self.temp_detaildata.priceArrayPinkLipstick.append(self.detaildata.priceArrayPinkLipstick[new_index])
                    self.temp_detaildata.whatItIsArrayPinkLipstick.append(self.detaildata.whatItIsArrayPinkLipstick[new_index])
                    self.temp_detaildata.whatItDoesArrayPinkLipstick.append(self.detaildata.whatItDoesArrayPinkLipstick[new_index])
                    self.temp_detaildata.linkArrayPinkLipstick.append(self.detaildata.linkArrayPinkLipstick[new_index])
                }
            }
        }
        if self.shadeButtonNumber == 3 {
            for _index in 1...self.detaildata.priceArrayBerryLipstick.count {
                let new_index = _index  - 1
                
                if Float(selectedValue) >= Float(self.detaildata.priceArrayBerryLipstick[new_index]) {
                    self.temp_detaildata.imageArrayBerryLipstick.append(self.detaildata.imageArrayBerryLipstick[new_index])
                        self.temp_detaildata.shadeArrayBerryLipstick.append(self.detaildata.shadeArrayBerryLipstick[new_index])
                        self.temp_detaildata.brandArrayBerryLipstick.append(self.detaildata.brandArrayBerryLipstick[new_index])
                        self.temp_detaildata.lineArrayBerryLipstick.append(self.detaildata.lineArrayBerryLipstick[new_index])
                        self.temp_detaildata.priceArrayBerryLipstick.append(self.detaildata.priceArrayBerryLipstick[new_index])
                    self.temp_detaildata.whatItIsArrayBerryLipstick.append(self.detaildata.whatItIsArrayBerryLipstick[new_index])
                        self.temp_detaildata.whatItDoesArrayBerryLipstick.append(self.detaildata.whatItDoesArrayBerryLipstick[new_index])
                        self.temp_detaildata.linkArrayBerryLipstick.append(self.detaildata.linkArrayBerryLipstick[new_index])
                }
            }
        }
        if self.shadeButtonNumber == 4 {
            for _index in 1...self.detaildata.priceArrayCoralLipstick.count {
                let new_index = _index  - 1
                
                if Float(selectedValue) >= Float(self.detaildata.priceArrayCoralLipstick[new_index]) {
                    self.temp_detaildata.imageArrayCoralLipstick.append(self.detaildata.imageArrayCoralLipstick[new_index])
                        self.temp_detaildata.shadeArrayCoralLipstick.append(self.detaildata.shadeArrayCoralLipstick[new_index])
                        self.temp_detaildata.brandArrayCoralLipstick.append(self.detaildata.brandArrayCoralLipstick[new_index])
                        self.temp_detaildata.lineArrayCoralLipstick.append(self.detaildata.lineArrayCoralLipstick[new_index])
                        self.temp_detaildata.priceArrayCoralLipstick.append(self.detaildata.priceArrayCoralLipstick[new_index])
                    self.temp_detaildata.whatItIsArrayCoralLipstick.append(self.detaildata.whatItIsArrayCoralLipstick[new_index])
                        self.temp_detaildata.whatItDoesArrayCoralLipstick.append(self.detaildata.whatItDoesArrayCoralLipstick[new_index])
                        self.temp_detaildata.linkArrayCoralLipstick.append(self.detaildata.linkArrayCoralLipstick[new_index])
                }
            }
        }
        if self.shadeButtonNumber == 5 {
            for _index in 1...self.detaildata.priceArrayNudeLipstick.count {
                let new_index = _index  - 1
                
                if Float(selectedValue) >= Float(self.detaildata.priceArrayNudeLipstick[new_index]) {

                    self.temp_detaildata.imageArrayNudeLipstick.append(self.detaildata.imageArrayNudeLipstick[new_index])
                    self.temp_detaildata.shadeArrayNudeLipstick.append(self.detaildata.shadeArrayNudeLipstick[new_index])
                    self.temp_detaildata.brandArrayNudeLipstick.append(self.detaildata.brandArrayNudeLipstick[new_index])
                    self.temp_detaildata.lineArrayNudeLipstick.append(self.detaildata.lineArrayNudeLipstick[new_index])
                    self.temp_detaildata.priceArrayNudeLipstick.append(self.detaildata.priceArrayNudeLipstick[new_index])
                    self.temp_detaildata.whatItIsArrayNudeLipstick.append(self.detaildata.whatItIsArrayNudeLipstick[new_index])
                    self.temp_detaildata.whatItDoesArrayNudeLipstick.append(self.detaildata.whatItDoesArrayNudeLipstick[new_index])
                    self.temp_detaildata.linkArrayNudeLipstick.append(self.detaildata.linkArrayNudeLipstick[new_index])
                }
            }
        }
        self.collectionView.reloadData()
    }
    
    func swipeRight(recognizer : UISwipeGestureRecognizer) {
        self.performSegueWithIdentifier("swipeToSelectShade", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let recognizer: UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(ShadeViewController.swipeRight(_:)))
        recognizer.direction = .Right
        self.view .addGestureRecognizer(recognizer)
        print(productButton)
        print(self.shadeButtonNumber)
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
  
        if self.shadeButtonNumber == 1 && productButton == 1 {
            return self.temp_detaildata.priceArrayRedLipstick.count
        }
        if self.shadeButtonNumber == 1 && productButton == 2 {
            return self.temp_detaildata.priceArrayRedLiquid.count
        }
        if self.shadeButtonNumber == 2 {
            return self.temp_detaildata.priceArrayPinkLipstick.count
        }
        if self.shadeButtonNumber == 3 {
            return self.temp_detaildata.priceArrayBerryLipstick.count
        }
        if self.shadeButtonNumber == 4 {
            return self.temp_detaildata.priceArrayCoralLipstick.count
        }
        if self.shadeButtonNumber == 5 {
            return self.temp_detaildata.priceArrayNudeLipstick.count
        }
        return 0
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
        let screenSize: CGRect = UIScreen.mainScreen().bounds
        let screenWidth = screenSize.width
        return CGSize(width: (screenWidth-45)/3, height: (screenWidth-45)/3);
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath)
            as! CollectionViewCell
        if self.shadeButtonNumber == 1 && productButton == 1 {
            cell.imageView?.image = UIImage(named: self.temp_detaildata.imageArrayRedLipstick[indexPath.row])
        }else if self.shadeButtonNumber == 1 && productButton == 2 {
            cell.imageView?.image = UIImage(named: self.temp_detaildata.imageArrayRedLiquid[indexPath.row])
        
        }else if self.shadeButtonNumber == 2 {
            cell.imageView?.image = UIImage(named: self.temp_detaildata.imageArrayPinkLipstick[indexPath.row])
            
        }else if self.shadeButtonNumber == 3 {
            cell.imageView?.image = UIImage(named: self.temp_detaildata.imageArrayBerryLipstick[indexPath.row])
            
        }else if self.shadeButtonNumber == 4 {
            cell.imageView?.image = UIImage(named: self.temp_detaildata.imageArrayCoralLipstick[indexPath.row])
            
        }else if self.shadeButtonNumber == 5 {
            cell.imageView?.image = UIImage(named: self.temp_detaildata.imageArrayNudeLipstick[indexPath.row])
        }
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("showImage", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "showImage"
        {
            let indexPaths = self.collectionView!.indexPathsForSelectedItems()!
            let indexPath = indexPaths[0] as NSIndexPath
            let vc = segue.destinationViewController as! SpecificShadeViewController
            
            if self.shadeButtonNumber == 1 && productButton == 1 {
                vc.image = UIImage(named: self.temp_detaildata.imageArrayRedLipstick[indexPath.row])!
                vc.title = self.temp_detaildata.priceArrayRedLipstick[indexPath.row]
                vc.title1_value = self.temp_detaildata.shadeArrayRedLipstick[indexPath.row]
                vc.title2_value = self.temp_detaildata.brandArrayRedLipstick[indexPath.row]
                vc.title3_value = self.temp_detaildata.lineArrayRedLipstick[indexPath.row]
                vc.price_value = self.temp_detaildata.priceArrayRedLipstick[indexPath.row]
                vc.whatitis_value = self.temp_detaildata.whatItIsArrayRedLipstick[indexPath.row]
                vc.whatitdoes_value = self.temp_detaildata.whatItDoesArrayRedLipstick[indexPath.row]
                vc.weblink_values = self.temp_detaildata.linkArrayRedLipstick[indexPath.row]
                
            }else if self.shadeButtonNumber == 1 && productButton == 2 {
                vc.image = UIImage(named: self.temp_detaildata.imageArrayRedLiquid[indexPath.row])!
                vc.title = self.self.temp_detaildata.priceArrayRedLiquid[indexPath.row]
                vc.title1_value = self.temp_detaildata.shadeArrayRedLiquid[indexPath.row]
                vc.title2_value = self.temp_detaildata.brandArrayRedLiquid[indexPath.row]
                vc.title3_value = self.temp_detaildata.lineArrayRedLiquid[indexPath.row]
                vc.price_value = self.temp_detaildata.priceArrayRedLiquid[indexPath.row]
                vc.whatitis_value = self.temp_detaildata.whatItIsArrayRedLiquid[indexPath.row]
                vc.whatitdoes_value = self.temp_detaildata.whatItDoesArrayRedLiquid[indexPath.row]
                vc.weblink_values = self.temp_detaildata.linkArrayRedLiquid[indexPath.row]
            }else if self.shadeButtonNumber == 2 {
                vc.image = UIImage(named: self.temp_detaildata.imageArrayPinkLipstick[indexPath.row])!
                vc.title = self.self.temp_detaildata.priceArrayPinkLipstick[indexPath.row]
                vc.title1_value = self.temp_detaildata.shadeArrayPinkLipstick[indexPath.row]
                vc.title2_value = self.temp_detaildata.brandArrayPinkLipstick[indexPath.row]
                vc.title3_value = self.temp_detaildata.lineArrayPinkLipstick[indexPath.row]
                vc.price_value = self.temp_detaildata.priceArrayPinkLipstick[indexPath.row]
                vc.whatitis_value = self.temp_detaildata.whatItIsArrayPinkLipstick[indexPath.row]
                vc.whatitdoes_value = self.temp_detaildata.whatItDoesArrayPinkLipstick[indexPath.row]
                vc.weblink_values = self.temp_detaildata.linkArrayPinkLipstick[indexPath.row]
            }else if self.shadeButtonNumber == 3 {
                vc.image = UIImage(named: self.temp_detaildata.imageArrayBerryLipstick[indexPath.row])!
                vc.title = self.temp_detaildata.priceArrayBerryLipstick[indexPath.row]
                vc.title1_value = self.temp_detaildata.shadeArrayBerryLipstick[indexPath.row]
                vc.title2_value = self.temp_detaildata.brandArrayBerryLipstick[indexPath.row]
                vc.title3_value = self.temp_detaildata.lineArrayBerryLipstick[indexPath.row]
                vc.price_value = self.temp_detaildata.priceArrayBerryLipstick[indexPath.row]
                vc.whatitis_value = self.temp_detaildata.whatItIsArrayBerryLipstick[indexPath.row]
                vc.whatitdoes_value = self.temp_detaildata.whatItDoesArrayBerryLipstick[indexPath.row]
                vc.weblink_values = self.temp_detaildata.linkArrayBerryLipstick[indexPath.row]
            }else if self.shadeButtonNumber == 4 {
                vc.image = UIImage(named: self.temp_detaildata.imageArrayCoralLipstick[indexPath.row])!
                vc.title = self.temp_detaildata.priceArrayCoralLipstick[indexPath.row]
                vc.title1_value = self.temp_detaildata.shadeArrayCoralLipstick[indexPath.row]
                vc.title2_value = self.temp_detaildata.brandArrayCoralLipstick[indexPath.row]
                vc.title3_value = self.temp_detaildata.lineArrayCoralLipstick[indexPath.row]
                vc.price_value = self.temp_detaildata.priceArrayCoralLipstick[indexPath.row]
                vc.whatitis_value = self.temp_detaildata.whatItIsArrayCoralLipstick[indexPath.row]
                vc.whatitdoes_value = self.temp_detaildata.whatItDoesArrayCoralLipstick[indexPath.row]
                vc.weblink_values = self.temp_detaildata.linkArrayCoralLipstick[indexPath.row]
            }else if self.shadeButtonNumber == 5 {
                vc.image = UIImage(named: self.temp_detaildata.imageArrayNudeLipstick[indexPath.row])!
                vc.title = self.self.temp_detaildata.priceArrayNudeLipstick[indexPath.row]
                vc.title1_value = self.temp_detaildata.shadeArrayNudeLipstick[indexPath.row]
                vc.title2_value = self.temp_detaildata.brandArrayNudeLipstick[indexPath.row]
                vc.title3_value = self.temp_detaildata.lineArrayNudeLipstick[indexPath.row]
                vc.price_value = self.temp_detaildata.priceArrayNudeLipstick[indexPath.row]
                vc.whatitis_value = self.temp_detaildata.whatItIsArrayNudeLipstick[indexPath.row]
                vc.whatitdoes_value = self.temp_detaildata.whatItDoesArrayNudeLipstick[indexPath.row]
                vc.weblink_values = self.temp_detaildata.linkArrayNudeLipstick[indexPath.row]
            }
        }
    }
}