import UIKit
    
    class ShadeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource
    {
        
        @IBOutlet weak var collectionView: UICollectionView!
        
        let numberOfCases = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "x", "y", "z", "aa", "bb", "cc"]
        
        let imageArray = [UIImage(named: "biteAmuseBoucheCayenneLipstick"), UIImage(named: "biteAmuseBouchePersimmonLipstick"), UIImage(named: "katVonDStuddedKissArchangelLipstick"), UIImage(named: "katVonDStuddedKissBacheloretteLipstick"), UIImage(named: "katVonDStuddedKissHellbentLipstick"), UIImage(named: "katVonDStuddedKissHexagramLipstick-1"), UIImage(named: "katVonDStuddedKissUnderageRedLipstick"), UIImage(named: "narsFireDownBelowLipstick"), UIImage(named: "narsJungleRedLipstick"), UIImage(named: "narsRedLizardLipstick"), UIImage(named: "narsShanghaiExpressLipstick"), UIImage(named: "sephoraRougeMatteWantedLipstick"), UIImage(named: "urbanDecayViceBadBloodLipstick"), UIImage(named: "urbanDecayViceHexLipstick"), UIImage(named: "urbanDecayViceSheerFBombLipstick"), UIImage(named: "urbanDecayViceZealotLipstick"), UIImage(named: "givenchyLeRougeCarminEscarpinLipstick"), UIImage(named: "givenchyLeRougeRougeEgerieLipstick"), UIImage(named: "givenchyRougeInterditVinylRougeRebelleLipstick"), UIImage(named: "louboutinVelvetMatteDivaLipstick"), UIImage(named: "narsAudaciousRitaLipstick"), UIImage(named: "narsAudaciousAnnabellaLipstick"), UIImage(named: "smashboxBeLegendaryBingLipstick"), UIImage(named: "smashboxBeLegendaryUnzippedLipstick"), UIImage(named: "makeUpForEverRougeArtistRed"), UIImage(named: "makeUpForEverRougeArtistRedBrick"), UIImage(named: "smashboxBeLegendaryMadeItLipstick"), UIImage(named: "bobbiBrownLipRedLipstick")]
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
        
        func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            
            return self.numberOfCases.count
        }
        
        func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
            
            let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath)
                as! CollectionViewCell
            
            cell.imageView?.image = self.imageArray[indexPath.row]
            
            cell.titleLabel?.text = self.numberOfCases[indexPath.row]
            
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
                
                vc.image = self.imageArray[indexPath.row]!
                vc.title = self.numberOfCases[indexPath.row]
            }
        }
        @IBAction func unwindToShadeViewController(segue: UIStoryboardSegue) {
            // defining method
        }
        
}
