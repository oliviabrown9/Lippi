import UIKit


class ShadeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource
{
    var button_number:Int = Int()
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
        
        self.temp_detaildata.imageArray.removeAll()
        
        self.temp_detaildata.imageArray_pink.removeAll()
        
        self.temp_detaildata.imageArray_berry.removeAll()
        
        self.temp_detaildata.imageArray_coral.removeAll()
        
        self.temp_detaildata.imageArray_nude.removeAll()
        
        
        
        self.temp_detaildata.title1_array.removeAll()
        
        self.temp_detaildata.title1_array_pink.removeAll()
        
        self.temp_detaildata.title1_array_berry.removeAll()
        
        self.temp_detaildata.title1_array_coral.removeAll()
        
        self.temp_detaildata.title1_array_nude.removeAll()
        
        
        
        self.temp_detaildata.title2_array.removeAll()
        
        self.temp_detaildata.title2_array_pink.removeAll()
        
        self.temp_detaildata.title2_array_berry.removeAll()
        
        self.temp_detaildata.title2_array_coral.removeAll()
        
        self.temp_detaildata.title2_array_nude.removeAll()
        
        
        
        self.temp_detaildata.title3_array.removeAll()
        
        self.temp_detaildata.title3_array_pink.removeAll()
        
        self.temp_detaildata.title3_array_berry.removeAll()
        
        self.temp_detaildata.title3_array_coral.removeAll()
        
        self.temp_detaildata.title3_array_nude.removeAll()
        
        
        self.temp_detaildata.price_array.removeAll()
        self.temp_detaildata.price_array_pink.removeAll()
        
        self.temp_detaildata.price_array_berry.removeAll()
        
        self.temp_detaildata.price_array_coral.removeAll()
        
        self.temp_detaildata.price_array_nude.removeAll()
        
        
        self.temp_detaildata.whatitis_array.removeAll()
        
        self.temp_detaildata.whatitis_array_pink.removeAll()
        
        self.temp_detaildata.whatitis_array_berry.removeAll()
        
        self.temp_detaildata.whatitis_array_coral.removeAll()
        
        self.temp_detaildata.whatitis_array_nude.removeAll()
        
        
        self.temp_detaildata.whatitdoes_array.removeAll()
        
        self.temp_detaildata.whatitdoes_array_pink.removeAll()
        
        self.temp_detaildata.whatitdoes_array_berry.removeAll()
        
        self.temp_detaildata.whatitdoes_array_coral.removeAll()
        
        self.temp_detaildata.whatitdoes_array_nude.removeAll()
        
        
        
        
        self.temp_detaildata.weblink_array.removeAll()
        
        self.temp_detaildata.weblink_array_pink.removeAll()
        
        self.temp_detaildata.weblink_array_berry.removeAll()
        
        self.temp_detaildata.weblink_array_coral.removeAll()
        
        self.temp_detaildata.weblink_array_nude.removeAll()
        
        
        if self.button_number == 1 {
            
            for _index in 1...self.detaildata.price_array.count {
                
                let new_index = _index  - 1
                
                
                if Float(selectedValue) >= Float(self.detaildata.price_array[new_index]) {
                    
                    
                    self.temp_detaildata.imageArray.append(self.detaildata.imageArray[new_index])
                    
                    self.temp_detaildata.imageArray_pink.append(self.detaildata.imageArray_pink[new_index])
                    
                    self.temp_detaildata.imageArray_berry.append(self.detaildata.imageArray_berry[new_index])
                    
                    self.temp_detaildata.imageArray_coral.append(self.detaildata.imageArray_coral[new_index])
                    
                    self.temp_detaildata.imageArray_nude.append(self.detaildata.imageArray_nude[new_index])
                    
                    
                    
                    self.temp_detaildata.title1_array.append(self.detaildata.title1_array[new_index])
                    
                    self.temp_detaildata.title1_array_pink.append(self.detaildata.title1_array_pink[new_index])
                    
                    self.temp_detaildata.title1_array_berry.append(self.detaildata.title1_array_berry[new_index])
                    
                    self.temp_detaildata.title1_array_coral.append(self.detaildata.title1_array_coral[new_index])
                    
                    self.temp_detaildata.title1_array_nude.append(self.detaildata.title1_array_nude[new_index])
                    
                    
                    
                    self.temp_detaildata.title2_array.append(self.detaildata.title2_array[new_index])
                    
                    self.temp_detaildata.title2_array_pink.append(self.detaildata.title2_array_pink[new_index])
                    
                    self.temp_detaildata.title2_array_berry.append(self.detaildata.title2_array_berry[new_index])
                    
                    self.temp_detaildata.title2_array_coral.append(self.detaildata.title2_array_coral[new_index])
                    
                    self.temp_detaildata.title2_array_nude.append(self.detaildata.title2_array_nude[new_index])
                    
                    
                    
                    self.temp_detaildata.title3_array.append(self.detaildata.title3_array[new_index])
                    
                    self.temp_detaildata.title3_array_pink.append(self.detaildata.title3_array_pink[new_index])
                    
                    self.temp_detaildata.title3_array_berry.append(self.detaildata.title3_array_berry[new_index])
                    
                    self.temp_detaildata.title3_array_coral.append(self.detaildata.title3_array_coral[new_index])
                    
                    self.temp_detaildata.title3_array_nude.append(self.detaildata.title3_array_nude[new_index])
                    
                    
                    self.temp_detaildata.price_array.append(self.detaildata.price_array[new_index])
                    
                    self.temp_detaildata.price_array_pink.append(self.detaildata.price_array_pink[new_index])
                    
                    self.temp_detaildata.price_array_berry.append(self.detaildata.price_array_berry[new_index])
                    
                    self.temp_detaildata.price_array_coral.append(self.detaildata.price_array_coral[new_index])
                    
                    self.temp_detaildata.price_array_nude.append(self.detaildata.price_array_nude[new_index])
                    
                    
                    self.temp_detaildata.whatitis_array.append(self.detaildata.whatitis_array[new_index])
                    
                    self.temp_detaildata.whatitis_array_pink.append(self.detaildata.whatitis_array_pink[new_index])
                    
                    self.temp_detaildata.whatitis_array_berry.append(self.detaildata.whatitis_array_berry[new_index])
                    
                    self.temp_detaildata.whatitis_array_coral.append(self.detaildata.whatitis_array_coral[new_index])
                    
                    self.temp_detaildata.whatitis_array_nude.append(self.detaildata.whatitis_array_nude[new_index])
                    
                    
                    self.temp_detaildata.whatitdoes_array.append(self.detaildata.whatitdoes_array[new_index])
                    
                    self.temp_detaildata.whatitdoes_array_pink.append(self.detaildata.whatitdoes_array_pink[new_index])
                    
                    self.temp_detaildata.whatitdoes_array_berry.append(self.detaildata.whatitdoes_array_berry[new_index])
                    
                    self.temp_detaildata.whatitdoes_array_coral.append(self.detaildata.whatitdoes_array_coral[new_index])
                    
                    self.temp_detaildata.whatitdoes_array_nude.append(self.detaildata.whatitdoes_array_nude[new_index])
                    
                    
                    
                    
                    self.temp_detaildata.weblink_array.append(self.detaildata.weblink_array[new_index])
                    
                    self.temp_detaildata.weblink_array_pink.append(self.detaildata.weblink_array_pink[new_index])
                    
                    self.temp_detaildata.weblink_array_berry.append(self.detaildata.weblink_array_berry[new_index])
                    
                    self.temp_detaildata.weblink_array_coral.append(self.detaildata.weblink_array_coral[new_index])
                    
                    self.temp_detaildata.weblink_array_nude.append(self.detaildata.weblink_array_nude[new_index])
                }
                
            }
            
        }
        
        if self.button_number == 2 {
            for _index in 1...self.detaildata.price_array_pink.count {
                let new_index = _index  - 1
                
                if Float(selectedValue) >= Float(self.detaildata.price_array_pink[new_index]) {
                    
                    
                    self.temp_detaildata.imageArray.append(self.detaildata.imageArray[new_index])
                    
                    self.temp_detaildata.imageArray_pink.append(self.detaildata.imageArray_pink[new_index])
                    
                    self.temp_detaildata.imageArray_berry.append(self.detaildata.imageArray_berry[new_index])
                    
                    self.temp_detaildata.imageArray_coral.append(self.detaildata.imageArray_coral[new_index])
                    
                    self.temp_detaildata.imageArray_nude.append(self.detaildata.imageArray_nude[new_index])
                    
                    
                    
                    self.temp_detaildata.title1_array.append(self.detaildata.title1_array[new_index])
                    
                    self.temp_detaildata.title1_array_pink.append(self.detaildata.title1_array_pink[new_index])
                    
                    self.temp_detaildata.title1_array_berry.append(self.detaildata.title1_array_berry[new_index])
                    
                    self.temp_detaildata.title1_array_coral.append(self.detaildata.title1_array_coral[new_index])
                    
                    self.temp_detaildata.title1_array_nude.append(self.detaildata.title1_array_nude[new_index])
                    
                    
                    
                    self.temp_detaildata.title2_array.append(self.detaildata.title2_array[new_index])
                    
                    self.temp_detaildata.title2_array_pink.append(self.detaildata.title2_array_pink[new_index])
                    
                    self.temp_detaildata.title2_array_berry.append(self.detaildata.title2_array_berry[new_index])
                    
                    self.temp_detaildata.title2_array_coral.append(self.detaildata.title2_array_coral[new_index])
                    
                    self.temp_detaildata.title2_array_nude.append(self.detaildata.title2_array_nude[new_index])
                    
                    
                    
                    self.temp_detaildata.title3_array.append(self.detaildata.title3_array[new_index])
                    
                    self.temp_detaildata.title3_array_pink.append(self.detaildata.title3_array_pink[new_index])
                    
                    self.temp_detaildata.title3_array_berry.append(self.detaildata.title3_array_berry[new_index])
                    
                    self.temp_detaildata.title3_array_coral.append(self.detaildata.title3_array_coral[new_index])
                    
                    self.temp_detaildata.title3_array_nude.append(self.detaildata.title3_array_nude[new_index])
                    
                    
                    self.temp_detaildata.price_array.append(self.detaildata.price_array[new_index])
                    
                    self.temp_detaildata.price_array_pink.append(self.detaildata.price_array_pink[new_index])
                    
                    self.temp_detaildata.price_array_berry.append(self.detaildata.price_array_berry[new_index])
                    
                    self.temp_detaildata.price_array_coral.append(self.detaildata.price_array_coral[new_index])
                    
                    self.temp_detaildata.price_array_nude.append(self.detaildata.price_array_nude[new_index])
                    
                    
                    self.temp_detaildata.whatitis_array.append(self.detaildata.whatitis_array[new_index])
                    
                    self.temp_detaildata.whatitis_array_pink.append(self.detaildata.whatitis_array_pink[new_index])
                    
                    self.temp_detaildata.whatitis_array_berry.append(self.detaildata.whatitis_array_berry[new_index])
                    
                    self.temp_detaildata.whatitis_array_coral.append(self.detaildata.whatitis_array_coral[new_index])
                    
                    self.temp_detaildata.whatitis_array_nude.append(self.detaildata.whatitis_array_nude[new_index])
                    
                    
                    self.temp_detaildata.whatitdoes_array.append(self.detaildata.whatitdoes_array[new_index])
                    
                    self.temp_detaildata.whatitdoes_array_pink.append(self.detaildata.whatitdoes_array_pink[new_index])
                    
                    self.temp_detaildata.whatitdoes_array_berry.append(self.detaildata.whatitdoes_array_berry[new_index])
                    
                    self.temp_detaildata.whatitdoes_array_coral.append(self.detaildata.whatitdoes_array_coral[new_index])
                    
                    self.temp_detaildata.whatitdoes_array_nude.append(self.detaildata.whatitdoes_array_nude[new_index])
                    
                    
                    
                    
                    self.temp_detaildata.weblink_array.append(self.detaildata.weblink_array[new_index])
                    
                    self.temp_detaildata.weblink_array_pink.append(self.detaildata.weblink_array_pink[new_index])
                    
                    self.temp_detaildata.weblink_array_berry.append(self.detaildata.weblink_array_berry[new_index])
                    
                    self.temp_detaildata.weblink_array_coral.append(self.detaildata.weblink_array_coral[new_index])
                    
                    self.temp_detaildata.weblink_array_nude.append(self.detaildata.weblink_array_nude[new_index])
                }
                
            }
            
        }
        if self.button_number == 3 {
            for _index in 1...self.detaildata.price_array_berry.count {
                let new_index = _index  - 1
                
                if Float(selectedValue) >= Float(self.detaildata.price_array_berry[new_index]) {
                    
                    self.temp_detaildata.imageArray.append(self.detaildata.imageArray[new_index])
                    
                    self.temp_detaildata.imageArray_pink.append(self.detaildata.imageArray_pink[new_index])
                    
                    self.temp_detaildata.imageArray_berry.append(self.detaildata.imageArray_berry[new_index])
                    
                    self.temp_detaildata.imageArray_coral.append(self.detaildata.imageArray_coral[new_index])
                    
                    self.temp_detaildata.imageArray_nude.append(self.detaildata.imageArray_nude[new_index])
                    
                    
                    
                    self.temp_detaildata.title1_array.append(self.detaildata.title1_array[new_index])
                    
                    self.temp_detaildata.title1_array_pink.append(self.detaildata.title1_array_pink[new_index])
                    
                    self.temp_detaildata.title1_array_berry.append(self.detaildata.title1_array_berry[new_index])
                    
                    self.temp_detaildata.title1_array_coral.append(self.detaildata.title1_array_coral[new_index])
                    
                    self.temp_detaildata.title1_array_nude.append(self.detaildata.title1_array_nude[new_index])
                    
                    
                    
                    self.temp_detaildata.title2_array.append(self.detaildata.title2_array[new_index])
                    
                    self.temp_detaildata.title2_array_pink.append(self.detaildata.title2_array_pink[new_index])
                    
                    self.temp_detaildata.title2_array_berry.append(self.detaildata.title2_array_berry[new_index])
                    
                    self.temp_detaildata.title2_array_coral.append(self.detaildata.title2_array_coral[new_index])
                    
                    self.temp_detaildata.title2_array_nude.append(self.detaildata.title2_array_nude[new_index])
                    
                    
                    
                    self.temp_detaildata.title3_array.append(self.detaildata.title3_array[new_index])
                    
                    self.temp_detaildata.title3_array_pink.append(self.detaildata.title3_array_pink[new_index])
                    
                    self.temp_detaildata.title3_array_berry.append(self.detaildata.title3_array_berry[new_index])
                    
                    self.temp_detaildata.title3_array_coral.append(self.detaildata.title3_array_coral[new_index])
                    
                    self.temp_detaildata.title3_array_nude.append(self.detaildata.title3_array_nude[new_index])
                    
                    
                    self.temp_detaildata.price_array.append(self.detaildata.price_array[new_index])
                    
                    self.temp_detaildata.price_array_pink.append(self.detaildata.price_array_pink[new_index])
                    
                    self.temp_detaildata.price_array_berry.append(self.detaildata.price_array_berry[new_index])
                    
                    self.temp_detaildata.price_array_coral.append(self.detaildata.price_array_coral[new_index])
                    
                    self.temp_detaildata.price_array_nude.append(self.detaildata.price_array_nude[new_index])
                    
                    
                    self.temp_detaildata.whatitis_array.append(self.detaildata.whatitis_array[new_index])
                    
                    self.temp_detaildata.whatitis_array_pink.append(self.detaildata.whatitis_array_pink[new_index])
                    
                    self.temp_detaildata.whatitis_array_berry.append(self.detaildata.whatitis_array_berry[new_index])
                    
                    self.temp_detaildata.whatitis_array_coral.append(self.detaildata.whatitis_array_coral[new_index])
                    
                    self.temp_detaildata.whatitis_array_nude.append(self.detaildata.whatitis_array_nude[new_index])
                    
                    
                    self.temp_detaildata.whatitdoes_array.append(self.detaildata.whatitdoes_array[new_index])
                    
                    self.temp_detaildata.whatitdoes_array_pink.append(self.detaildata.whatitdoes_array_pink[new_index])
                    
                    self.temp_detaildata.whatitdoes_array_berry.append(self.detaildata.whatitdoes_array_berry[new_index])
                    
                    self.temp_detaildata.whatitdoes_array_coral.append(self.detaildata.whatitdoes_array_coral[new_index])
                    
                    self.temp_detaildata.whatitdoes_array_nude.append(self.detaildata.whatitdoes_array_nude[new_index])
                    
                    
                    
                    
                    self.temp_detaildata.weblink_array.append(self.detaildata.weblink_array[new_index])
                    
                    self.temp_detaildata.weblink_array_pink.append(self.detaildata.weblink_array_pink[new_index])
                    
                    self.temp_detaildata.weblink_array_berry.append(self.detaildata.weblink_array_berry[new_index])
                    
                    self.temp_detaildata.weblink_array_coral.append(self.detaildata.weblink_array_coral[new_index])
                    
                    self.temp_detaildata.weblink_array_nude.append(self.detaildata.weblink_array_nude[new_index])
                }
                
            }
            
        }
        if self.button_number == 4 {
            for _index in 1...self.detaildata.price_array_coral.count {
                let new_index = _index  - 1
                
                if Float(selectedValue) >= Float(self.detaildata.price_array_coral[new_index]) {
                    
                    
                    self.temp_detaildata.imageArray.append(self.detaildata.imageArray[new_index])
                    
                    self.temp_detaildata.imageArray_pink.append(self.detaildata.imageArray_pink[new_index])
                    
                    self.temp_detaildata.imageArray_berry.append(self.detaildata.imageArray_berry[new_index])
                    
                    self.temp_detaildata.imageArray_coral.append(self.detaildata.imageArray_coral[new_index])
                    
                    self.temp_detaildata.imageArray_nude.append(self.detaildata.imageArray_nude[new_index])
                    
                    
                    
                    self.temp_detaildata.title1_array.append(self.detaildata.title1_array[new_index])
                    
                    self.temp_detaildata.title1_array_pink.append(self.detaildata.title1_array_pink[new_index])
                    
                    self.temp_detaildata.title1_array_berry.append(self.detaildata.title1_array_berry[new_index])
                    
                    self.temp_detaildata.title1_array_coral.append(self.detaildata.title1_array_coral[new_index])
                    
                    self.temp_detaildata.title1_array_nude.append(self.detaildata.title1_array_nude[new_index])
                    
                    
                    
                    self.temp_detaildata.title2_array.append(self.detaildata.title2_array[new_index])
                    
                    self.temp_detaildata.title2_array_pink.append(self.detaildata.title2_array_pink[new_index])
                    
                    self.temp_detaildata.title2_array_berry.append(self.detaildata.title2_array_berry[new_index])
                    
                    self.temp_detaildata.title2_array_coral.append(self.detaildata.title2_array_coral[new_index])
                    
                    self.temp_detaildata.title2_array_nude.append(self.detaildata.title2_array_nude[new_index])
                    
                    
                    
                    self.temp_detaildata.title3_array.append(self.detaildata.title3_array[new_index])
                    
                    self.temp_detaildata.title3_array_pink.append(self.detaildata.title3_array_pink[new_index])
                    
                    self.temp_detaildata.title3_array_berry.append(self.detaildata.title3_array_berry[new_index])
                    
                    self.temp_detaildata.title3_array_coral.append(self.detaildata.title3_array_coral[new_index])
                    
                    self.temp_detaildata.title3_array_nude.append(self.detaildata.title3_array_nude[new_index])
                    
                    
                    self.temp_detaildata.price_array.append(self.detaildata.price_array[new_index])
                    
                    self.temp_detaildata.price_array_pink.append(self.detaildata.price_array_pink[new_index])
                    
                    self.temp_detaildata.price_array_berry.append(self.detaildata.price_array_berry[new_index])
                    
                    self.temp_detaildata.price_array_coral.append(self.detaildata.price_array_coral[new_index])
                    
                    self.temp_detaildata.price_array_nude.append(self.detaildata.price_array_nude[new_index])
                    
                    
                    self.temp_detaildata.whatitis_array.append(self.detaildata.whatitis_array[new_index])
                    
                    self.temp_detaildata.whatitis_array_pink.append(self.detaildata.whatitis_array_pink[new_index])
                    
                    self.temp_detaildata.whatitis_array_berry.append(self.detaildata.whatitis_array_berry[new_index])
                    
                    self.temp_detaildata.whatitis_array_coral.append(self.detaildata.whatitis_array_coral[new_index])
                    
                    self.temp_detaildata.whatitis_array_nude.append(self.detaildata.whatitis_array_nude[new_index])
                    
                    
                    self.temp_detaildata.whatitdoes_array.append(self.detaildata.whatitdoes_array[new_index])
                    
                    self.temp_detaildata.whatitdoes_array_pink.append(self.detaildata.whatitdoes_array_pink[new_index])
                    
                    self.temp_detaildata.whatitdoes_array_berry.append(self.detaildata.whatitdoes_array_berry[new_index])
                    
                    self.temp_detaildata.whatitdoes_array_coral.append(self.detaildata.whatitdoes_array_coral[new_index])
                    
                    self.temp_detaildata.whatitdoes_array_nude.append(self.detaildata.whatitdoes_array_nude[new_index])
                    
                    
                    
                    
                    self.temp_detaildata.weblink_array.append(self.detaildata.weblink_array[new_index])
                    
                    self.temp_detaildata.weblink_array_pink.append(self.detaildata.weblink_array_pink[new_index])
                    
                    self.temp_detaildata.weblink_array_berry.append(self.detaildata.weblink_array_berry[new_index])
                    
                    self.temp_detaildata.weblink_array_coral.append(self.detaildata.weblink_array_coral[new_index])
                    
                    self.temp_detaildata.weblink_array_nude.append(self.detaildata.weblink_array_nude[new_index])
                }
                
            }
            
        }
        if self.button_number == 5 {
            for _index in 1...self.detaildata.price_array_nude.count {
                let new_index = _index  - 1
                
                if Float(selectedValue) >= Float(self.detaildata.price_array_nude[new_index]) {
                    
                    
                    self.temp_detaildata.imageArray.append(self.detaildata.imageArray[new_index])
                    
                    self.temp_detaildata.imageArray_pink.append(self.detaildata.imageArray_pink[new_index])
                    
                    self.temp_detaildata.imageArray_berry.append(self.detaildata.imageArray_berry[new_index])
                    
                    self.temp_detaildata.imageArray_coral.append(self.detaildata.imageArray_coral[new_index])
                    
                    self.temp_detaildata.imageArray_nude.append(self.detaildata.imageArray_nude[new_index])
                    
                    
                    
                    self.temp_detaildata.title1_array.append(self.detaildata.title1_array[new_index])
                    
                    self.temp_detaildata.title1_array_pink.append(self.detaildata.title1_array_pink[new_index])
                    
                    self.temp_detaildata.title1_array_berry.append(self.detaildata.title1_array_berry[new_index])
                    
                    self.temp_detaildata.title1_array_coral.append(self.detaildata.title1_array_coral[new_index])
                    
                    self.temp_detaildata.title1_array_nude.append(self.detaildata.title1_array_nude[new_index])
                    
                    
                    
                    self.temp_detaildata.title2_array.append(self.detaildata.title2_array[new_index])
                    
                    self.temp_detaildata.title2_array_pink.append(self.detaildata.title2_array_pink[new_index])
                    
                    self.temp_detaildata.title2_array_berry.append(self.detaildata.title2_array_berry[new_index])
                    
                    self.temp_detaildata.title2_array_coral.append(self.detaildata.title2_array_coral[new_index])
                    
                    self.temp_detaildata.title2_array_nude.append(self.detaildata.title2_array_nude[new_index])
                    
                    
                    
                    self.temp_detaildata.title3_array.append(self.detaildata.title3_array[new_index])
                    
                    self.temp_detaildata.title3_array_pink.append(self.detaildata.title3_array_pink[new_index])
                    
                    self.temp_detaildata.title3_array_berry.append(self.detaildata.title3_array_berry[new_index])
                    
                    self.temp_detaildata.title3_array_coral.append(self.detaildata.title3_array_coral[new_index])
                    
                    self.temp_detaildata.title3_array_nude.append(self.detaildata.title3_array_nude[new_index])
                    
                    
                    self.temp_detaildata.price_array.append(self.detaildata.price_array[new_index])
                    
                    self.temp_detaildata.price_array_pink.append(self.detaildata.price_array_pink[new_index])
                    
                    self.temp_detaildata.price_array_berry.append(self.detaildata.price_array_berry[new_index])
                    
                    self.temp_detaildata.price_array_coral.append(self.detaildata.price_array_coral[new_index])
                    
                    self.temp_detaildata.price_array_nude.append(self.detaildata.price_array_nude[new_index])
                    
                    
                    self.temp_detaildata.whatitis_array.append(self.detaildata.whatitis_array[new_index])
                    
                    self.temp_detaildata.whatitis_array_pink.append(self.detaildata.whatitis_array_pink[new_index])
                    
                    self.temp_detaildata.whatitis_array_berry.append(self.detaildata.whatitis_array_berry[new_index])
                    
                    self.temp_detaildata.whatitis_array_coral.append(self.detaildata.whatitis_array_coral[new_index])
                    
                    self.temp_detaildata.whatitis_array_nude.append(self.detaildata.whatitis_array_nude[new_index])
                    
                    
                    self.temp_detaildata.whatitdoes_array.append(self.detaildata.whatitdoes_array[new_index])
                    
                    self.temp_detaildata.whatitdoes_array_pink.append(self.detaildata.whatitdoes_array_pink[new_index])
                    
                    self.temp_detaildata.whatitdoes_array_berry.append(self.detaildata.whatitdoes_array_berry[new_index])
                    
                    self.temp_detaildata.whatitdoes_array_coral.append(self.detaildata.whatitdoes_array_coral[new_index])
                    
                    self.temp_detaildata.whatitdoes_array_nude.append(self.detaildata.whatitdoes_array_nude[new_index])
                    
                    self.temp_detaildata.weblink_array.append(self.detaildata.weblink_array[new_index])
                    
                    self.temp_detaildata.weblink_array_pink.append(self.detaildata.weblink_array_pink[new_index])
                    
                    self.temp_detaildata.weblink_array_berry.append(self.detaildata.weblink_array_berry[new_index])
                    
                    self.temp_detaildata.weblink_array_coral.append(self.detaildata.weblink_array_coral[new_index])
                    
                    self.temp_detaildata.weblink_array_nude.append(self.detaildata.weblink_array_nude[new_index])
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
    }
    
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
  
        if self.button_number == 1 {
            return self.temp_detaildata.price_array.count
            
        }
        if self.button_number == 2 {
            return self.temp_detaildata.price_array_pink.count
            
        }
        if self.button_number == 3 {
            return self.temp_detaildata.price_array_berry.count
            
        }
        if self.button_number == 4 {
            return self.temp_detaildata.price_array_coral.count
            
        }
        if self.button_number == 5 {
            return self.temp_detaildata.price_array_nude.count
            
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
        if self.button_number == 1 {
            cell.imageView?.image = UIImage(named: self.temp_detaildata.imageArray[indexPath.row])
        }else if self.button_number == 2 {
            cell.imageView?.image = UIImage(named: self.temp_detaildata.imageArray_pink[indexPath.row])
            
        }else if self.button_number == 3 {
            cell.imageView?.image = UIImage(named: self.temp_detaildata.imageArray_berry[indexPath.row])
            
        }else if self.button_number == 4 {
            cell.imageView?.image = UIImage(named: self.temp_detaildata.imageArray_coral[indexPath.row])
            
        }else if self.button_number == 5 {
            cell.imageView?.image = UIImage(named: self.temp_detaildata.imageArray_nude[indexPath.row])
            
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
            
            if self.button_number == 1 {
                vc.image = UIImage(named: self.temp_detaildata.imageArray[indexPath.row])!
                vc.title = self.temp_detaildata.price_array[indexPath.row]
                vc.title1_value = self.temp_detaildata.title1_array[indexPath.row]
                vc.title2_value = self.temp_detaildata.title2_array[indexPath.row]
                vc.title3_value = self.temp_detaildata.title3_array[indexPath.row]
                vc.price_value = self.temp_detaildata.price_array[indexPath.row]
                vc.whatitis_value = self.temp_detaildata.whatitis_array[indexPath.row]
                vc.whatitdoes_value = self.temp_detaildata.whatitdoes_array[indexPath.row]
                vc.weblink_values = self.temp_detaildata.weblink_array[indexPath.row]
            }else if self.button_number == 2 {
                vc.image = UIImage(named: self.temp_detaildata.imageArray_pink[indexPath.row])!
                vc.title = self.self.temp_detaildata.price_array_pink[indexPath.row]
                vc.title1_value = self.temp_detaildata.title1_array_pink[indexPath.row]
                vc.title2_value = self.temp_detaildata.title2_array_pink[indexPath.row]
                vc.title3_value = self.temp_detaildata.title3_array_pink[indexPath.row]
                vc.price_value = self.temp_detaildata.price_array_pink[indexPath.row]
                vc.whatitis_value = self.temp_detaildata.whatitis_array_pink[indexPath.row]
                vc.whatitdoes_value = self.temp_detaildata.whatitdoes_array_pink[indexPath.row]
                vc.weblink_values = self.temp_detaildata.weblink_array_pink[indexPath.row]
            }else if self.button_number == 3 {
                vc.image = UIImage(named: self.temp_detaildata.imageArray_berry[indexPath.row])!
                vc.title = self.temp_detaildata.price_array_berry[indexPath.row]
                vc.title1_value = self.temp_detaildata.title1_array_berry[indexPath.row]
                vc.title2_value = self.temp_detaildata.title2_array_berry[indexPath.row]
                vc.title3_value = self.temp_detaildata.title3_array_berry[indexPath.row]
                vc.price_value = self.temp_detaildata.price_array_berry[indexPath.row]
                vc.whatitis_value = self.temp_detaildata.whatitis_array_berry[indexPath.row]
                vc.whatitdoes_value = self.temp_detaildata.whatitdoes_array_berry[indexPath.row]
                vc.weblink_values = self.temp_detaildata.weblink_array_berry[indexPath.row]
            }else if self.button_number == 4 {
                vc.image = UIImage(named: self.temp_detaildata.imageArray_coral[indexPath.row])!
                vc.title = self.temp_detaildata.price_array_coral[indexPath.row]
                vc.title1_value = self.temp_detaildata.title1_array_coral[indexPath.row]
                vc.title2_value = self.temp_detaildata.title2_array_coral[indexPath.row]
                vc.title3_value = self.temp_detaildata.title3_array_coral[indexPath.row]
                vc.price_value = self.temp_detaildata.price_array_coral[indexPath.row]
                vc.whatitis_value = self.temp_detaildata.whatitis_array_coral[indexPath.row]
                vc.whatitdoes_value = self.temp_detaildata.whatitdoes_array_coral[indexPath.row]
                vc.weblink_values = self.temp_detaildata.weblink_array_coral[indexPath.row]
            }else if self.button_number == 5 {
                vc.image = UIImage(named: self.temp_detaildata.imageArray_nude[indexPath.row])!
                vc.title = self.self.temp_detaildata.price_array_nude[indexPath.row]
                vc.title1_value = self.temp_detaildata.title1_array_nude[indexPath.row]
                vc.title2_value = self.temp_detaildata.title2_array_nude[indexPath.row]
                vc.title3_value = self.temp_detaildata.title3_array_nude[indexPath.row]
                vc.price_value = self.temp_detaildata.price_array_nude[indexPath.row]
                vc.whatitis_value = self.temp_detaildata.whatitis_array_nude[indexPath.row]
                vc.whatitdoes_value = self.temp_detaildata.whatitdoes_array_nude[indexPath.row]
                vc.weblink_values = self.temp_detaildata.weblink_array_nude[indexPath.row]
            }
        }
    }
}