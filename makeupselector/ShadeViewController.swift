import UIKit

class ShadeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource
{
    var button_number:Int = Int()
    
    @IBAction func unwindShadeViewController(segue: UIStoryboardSegue) {
        // defining method
    }
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBAction func sliderValueChanged(sender: UISlider) {
        let selectedValue = Int(sender.value)
        
        sliderLabel.text = String("$ \(selectedValue)")
    }
    let numberOfCases = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "x", "y"]
    
    var detaildata: DetailData = DetailData()
    
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
        return self.numberOfCases.count
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
            cell.imageView?.image = UIImage(named: detaildata.imageArray[indexPath.row])
        }else if self.button_number == 2 {
            cell.imageView?.image = UIImage(named: detaildata.imageArray_pink[indexPath.row])
        }else if self.button_number == 3 {
            cell.imageView?.image = UIImage(named: detaildata.imageArray_berry[indexPath.row])
        }else if self.button_number == 4 {
            cell.imageView?.image = UIImage(named: detaildata.imageArray_coral[indexPath.row])
        }else if self.button_number == 5 {
            cell.imageView?.image = UIImage(named: detaildata.imageArray_nude[indexPath.row])
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
                vc.image = UIImage(named: detaildata.imageArray[indexPath.row])!
                vc.title = self.numberOfCases[indexPath.row]
                vc.title1_value = detaildata.title1_array[indexPath.row]
                vc.title2_value = detaildata.title2_array[indexPath.row]
                vc.title3_value = detaildata.title3_array[indexPath.row]
                vc.price_value = detaildata.price_array[indexPath.row]
                vc.whatitis_value = detaildata.whatitis_array[indexPath.row]
                vc.whatitdoes_value = detaildata.whatitdoes_array[indexPath.row]
                vc.weblink_values = detaildata.weblink_array[indexPath.row]
            }else if self.button_number == 2 {
                vc.image = UIImage(named: detaildata.imageArray_pink[indexPath.row])!
                vc.title = self.numberOfCases[indexPath.row]
                vc.title1_value = detaildata.title1_array_pink[indexPath.row]
                vc.title2_value = detaildata.title2_array_pink[indexPath.row]
                vc.title3_value = detaildata.title3_array_pink[indexPath.row]
                vc.price_value = detaildata.price_array_pink[indexPath.row]
                vc.whatitis_value = detaildata.whatitis_array_pink[indexPath.row]
                vc.whatitdoes_value = detaildata.whatitdoes_array_pink[indexPath.row]
                vc.weblink_values = detaildata.weblink_array_pink[indexPath.row]
            }else if self.button_number == 3 {
                vc.image = UIImage(named: detaildata.imageArray_berry[indexPath.row])!
                vc.title = self.numberOfCases[indexPath.row]
                vc.title1_value = detaildata.title1_array_berry[indexPath.row]
                vc.title2_value = detaildata.title2_array_berry[indexPath.row]
                vc.title3_value = detaildata.title3_array_berry[indexPath.row]
                vc.price_value = detaildata.price_array_berry[indexPath.row]
                vc.whatitis_value = detaildata.whatitis_array_berry[indexPath.row]
                vc.whatitdoes_value = detaildata.whatitdoes_array_berry[indexPath.row]
                vc.weblink_values = detaildata.weblink_array_berry[indexPath.row]
            }else if self.button_number == 4 {
                vc.image = UIImage(named: detaildata.imageArray_coral[indexPath.row])!
                vc.title = self.numberOfCases[indexPath.row]
                vc.title1_value = detaildata.title1_array_coral[indexPath.row]
                vc.title2_value = detaildata.title2_array_coral[indexPath.row]
                vc.title3_value = detaildata.title3_array_coral[indexPath.row]
                vc.price_value = detaildata.price_array_coral[indexPath.row]
                vc.whatitis_value = detaildata.whatitis_array_coral[indexPath.row]
                vc.whatitdoes_value = detaildata.whatitdoes_array_coral[indexPath.row]
                vc.weblink_values = detaildata.weblink_array_coral[indexPath.row]
            }else if self.button_number == 5 {
                vc.image = UIImage(named: detaildata.imageArray_nude[indexPath.row])!
                vc.title = self.numberOfCases[indexPath.row]
                vc.title1_value = detaildata.title1_array_nude[indexPath.row]
                vc.title2_value = detaildata.title2_array_nude[indexPath.row]
                vc.title3_value = detaildata.title3_array_nude[indexPath.row]
                vc.price_value = detaildata.price_array_nude[indexPath.row]
                vc.whatitis_value = detaildata.whatitis_array_nude[indexPath.row]
                vc.whatitdoes_value = detaildata.whatitdoes_array_nude[indexPath.row]
                vc.weblink_values = detaildata.weblink_array_nude[indexPath.row]
            }
        }
    }
}