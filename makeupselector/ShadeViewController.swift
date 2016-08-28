//
//  ShadeViewController.swift
//  Lippi
//
//  Created by Olivia on 6/28/16.
//  Copyright © 2016 Olivia. All rights reserved.
//

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
        self.temp_detaildata.imageArrayRedCrayon.removeAll()
        self.temp_detaildata.imageArrayRedStain.removeAll()
        self.temp_detaildata.imageArrayRedLiner.removeAll()
        self.temp_detaildata.imageArrayPinkLiquid.removeAll()
        self.temp_detaildata.imageArrayPinkCrayon.removeAll()
        self.temp_detaildata.imageArrayPinkStain.removeAll()
        self.temp_detaildata.imageArrayPinkLiner.removeAll()
        self.temp_detaildata.imageArrayBerryLiquid.removeAll()
        self.temp_detaildata.imageArrayBerryCrayon.removeAll()
        self.temp_detaildata.imageArrayBerryStain.removeAll()
        self.temp_detaildata.imageArrayBerryLiner.removeAll()
        self.temp_detaildata.imageArrayCoralLiquid.removeAll()
        self.temp_detaildata.imageArrayCoralCrayon.removeAll()
        self.temp_detaildata.imageArrayCoralStain.removeAll()
        self.temp_detaildata.imageArrayCoralLiner.removeAll()
        self.temp_detaildata.imageArrayNudeLiquid.removeAll()
        self.temp_detaildata.imageArrayNudeCrayon.removeAll()
        self.temp_detaildata.imageArrayNudeStain.removeAll()
        self.temp_detaildata.imageArrayNudeLiner.removeAll()
        
        self.temp_detaildata.shadeArrayRedLipstick.removeAll()
        self.temp_detaildata.shadeArrayPinkLipstick.removeAll()
        self.temp_detaildata.shadeArrayBerryLipstick.removeAll()
        self.temp_detaildata.shadeArrayCoralLipstick.removeAll()
        self.temp_detaildata.shadeArrayNudeLipstick.removeAll()
        self.temp_detaildata.shadeArrayRedLiquid.removeAll()
        self.temp_detaildata.shadeArrayRedCrayon.removeAll()
        self.temp_detaildata.shadeArrayRedStain.removeAll()
        self.temp_detaildata.shadeArrayRedLiner.removeAll()
        self.temp_detaildata.shadeArrayPinkLiquid.removeAll()
        self.temp_detaildata.shadeArrayPinkCrayon.removeAll()
        self.temp_detaildata.shadeArrayPinkStain.removeAll()
        self.temp_detaildata.shadeArrayPinkLiner.removeAll()
        self.temp_detaildata.shadeArrayBerryLiquid.removeAll()
        self.temp_detaildata.shadeArrayBerryCrayon.removeAll()
        self.temp_detaildata.shadeArrayBerryStain.removeAll()
        self.temp_detaildata.shadeArrayBerryLiner.removeAll()
        self.temp_detaildata.shadeArrayCoralLiquid.removeAll()
        self.temp_detaildata.shadeArrayCoralCrayon.removeAll()
        self.temp_detaildata.shadeArrayCoralStain.removeAll()
        self.temp_detaildata.shadeArrayCoralLiner.removeAll()
        self.temp_detaildata.shadeArrayNudeLiquid.removeAll()
        self.temp_detaildata.shadeArrayNudeCrayon.removeAll()
        self.temp_detaildata.shadeArrayNudeStain.removeAll()
        self.temp_detaildata.shadeArrayNudeLiner.removeAll()
        
        self.temp_detaildata.brandArrayRedLipstick.removeAll()
        self.temp_detaildata.brandArrayPinkLipstick.removeAll()
        self.temp_detaildata.brandArrayBerryLipstick.removeAll()
        self.temp_detaildata.brandArrayCoralLipstick.removeAll()
        self.temp_detaildata.brandArrayNudeLipstick.removeAll()
        self.temp_detaildata.brandArrayRedLiquid.removeAll()
        self.temp_detaildata.brandArrayRedCrayon.removeAll()
        self.temp_detaildata.brandArrayRedStain.removeAll()
        self.temp_detaildata.brandArrayRedLiner.removeAll()
        self.temp_detaildata.brandArrayPinkLiquid.removeAll()
        self.temp_detaildata.brandArrayPinkCrayon.removeAll()
        self.temp_detaildata.brandArrayPinkStain.removeAll()
        self.temp_detaildata.brandArrayPinkLiner.removeAll()
        self.temp_detaildata.brandArrayBerryLiquid.removeAll()
        self.temp_detaildata.brandArrayBerryCrayon.removeAll()
        self.temp_detaildata.brandArrayBerryStain.removeAll()
        self.temp_detaildata.brandArrayBerryLiner.removeAll()
        self.temp_detaildata.brandArrayCoralLiquid.removeAll()
        self.temp_detaildata.brandArrayCoralCrayon.removeAll()
        self.temp_detaildata.brandArrayCoralStain.removeAll()
        self.temp_detaildata.brandArrayCoralLiner.removeAll()
        self.temp_detaildata.brandArrayNudeLiquid.removeAll()
        self.temp_detaildata.brandArrayNudeCrayon.removeAll()
        self.temp_detaildata.brandArrayNudeStain.removeAll()
        self.temp_detaildata.brandArrayNudeLiner.removeAll()
        
        self.temp_detaildata.priceArrayRedLipstick.removeAll()
        self.temp_detaildata.priceArrayPinkLipstick.removeAll()
        self.temp_detaildata.priceArrayBerryLipstick.removeAll()
        self.temp_detaildata.priceArrayCoralLipstick.removeAll()
        self.temp_detaildata.priceArrayNudeLipstick.removeAll()
        self.temp_detaildata.priceArrayRedLiquid.removeAll()
        self.temp_detaildata.priceArrayRedCrayon.removeAll()
        self.temp_detaildata.priceArrayRedStain.removeAll()
        self.temp_detaildata.priceArrayRedLiner.removeAll()
        self.temp_detaildata.priceArrayPinkLiquid.removeAll()
        self.temp_detaildata.priceArrayPinkCrayon.removeAll()
        self.temp_detaildata.priceArrayPinkStain.removeAll()
        self.temp_detaildata.priceArrayPinkLiner.removeAll()
        self.temp_detaildata.priceArrayBerryLiquid.removeAll()
        self.temp_detaildata.priceArrayBerryCrayon.removeAll()
        self.temp_detaildata.priceArrayBerryStain.removeAll()
        self.temp_detaildata.priceArrayBerryLiner.removeAll()
        self.temp_detaildata.priceArrayCoralLiquid.removeAll()
        self.temp_detaildata.priceArrayCoralCrayon.removeAll()
        self.temp_detaildata.priceArrayCoralStain.removeAll()
        self.temp_detaildata.priceArrayCoralLiner.removeAll()
        self.temp_detaildata.priceArrayNudeLiquid.removeAll()
        self.temp_detaildata.priceArrayNudeCrayon.removeAll()
        self.temp_detaildata.priceArrayNudeStain.removeAll()
        self.temp_detaildata.priceArrayNudeLiner.removeAll()
        
        self.temp_detaildata.whatItIsArrayRedLipstick.removeAll()
        self.temp_detaildata.whatItIsArrayPinkLipstick.removeAll()
        self.temp_detaildata.whatItIsArrayBerryLipstick.removeAll()
        self.temp_detaildata.whatItIsArrayCoralLipstick.removeAll()
        self.temp_detaildata.whatItIsArrayNudeLipstick.removeAll()
        self.temp_detaildata.whatItIsArrayRedLiquid.removeAll()
        self.temp_detaildata.whatItIsArrayRedCrayon.removeAll()
        self.temp_detaildata.whatItIsArrayRedStain.removeAll()
        self.temp_detaildata.whatItIsArrayRedLiner.removeAll()
        self.temp_detaildata.whatItIsArrayPinkLiquid.removeAll()
        self.temp_detaildata.whatItIsArrayPinkCrayon.removeAll()
        self.temp_detaildata.whatItIsArrayPinkStain.removeAll()
        self.temp_detaildata.whatItIsArrayPinkLiner.removeAll()
        self.temp_detaildata.whatItIsArrayBerryLiquid.removeAll()
        self.temp_detaildata.whatItIsArrayBerryCrayon.removeAll()
        self.temp_detaildata.whatItIsArrayBerryStain.removeAll()
        self.temp_detaildata.whatItIsArrayBerryLiner.removeAll()
        self.temp_detaildata.whatItIsArrayCoralLiquid.removeAll()
        self.temp_detaildata.whatItIsArrayCoralCrayon.removeAll()
        self.temp_detaildata.whatItIsArrayCoralStain.removeAll()
        self.temp_detaildata.whatItIsArrayCoralLiner.removeAll()
        self.temp_detaildata.whatItIsArrayNudeLiquid.removeAll()
        self.temp_detaildata.whatItIsArrayNudeCrayon.removeAll()
        self.temp_detaildata.whatItIsArrayNudeStain.removeAll()
        self.temp_detaildata.whatItIsArrayNudeLiner.removeAll()
        
        self.temp_detaildata.linkArrayRedLipstick.removeAll()
        self.temp_detaildata.linkArrayPinkLipstick.removeAll()
        self.temp_detaildata.linkArrayBerryLipstick.removeAll()
        self.temp_detaildata.linkArrayCoralLipstick.removeAll()
        self.temp_detaildata.linkArrayNudeLipstick.removeAll()
        self.temp_detaildata.linkArrayRedLiquid.removeAll()
        self.temp_detaildata.linkArrayRedCrayon.removeAll()
        self.temp_detaildata.linkArrayRedStain.removeAll()
        self.temp_detaildata.linkArrayRedLiner.removeAll()
        self.temp_detaildata.linkArrayPinkLiquid.removeAll()
        self.temp_detaildata.linkArrayPinkCrayon.removeAll()
        self.temp_detaildata.linkArrayPinkStain.removeAll()
        self.temp_detaildata.linkArrayPinkLiner.removeAll()
        self.temp_detaildata.linkArrayBerryLiquid.removeAll()
        self.temp_detaildata.linkArrayBerryCrayon.removeAll()
        self.temp_detaildata.linkArrayBerryStain.removeAll()
        self.temp_detaildata.linkArrayBerryLiner.removeAll()
        self.temp_detaildata.linkArrayCoralLiquid.removeAll()
        self.temp_detaildata.linkArrayCoralCrayon.removeAll()
        self.temp_detaildata.linkArrayCoralStain.removeAll()
        self.temp_detaildata.linkArrayCoralLiner.removeAll()
        self.temp_detaildata.linkArrayNudeLiquid.removeAll()
        self.temp_detaildata.linkArrayNudeCrayon.removeAll()
        self.temp_detaildata.linkArrayNudeStain.removeAll()
        self.temp_detaildata.linkArrayNudeLiner.removeAll()
        
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
        
        if self.shadeButtonNumber == 1 && productButton == 3 {
            
            for _index in 1...self.detaildata.priceArrayRedLiquid.count {
                
                let new_index = _index  - 1
                
                if Float(selectedValue) >= Float(self.detaildata.priceArrayRedLiquid[new_index]) {
                    
                    self.temp_detaildata.imageArrayRedCrayon.append(self.detaildata.imageArrayRedCrayon[new_index])
                    self.temp_detaildata.shadeArrayRedCrayon.append(self.detaildata.shadeArrayRedCrayon[new_index])
                    self.temp_detaildata.brandArrayRedCrayon.append(self.detaildata.brandArrayRedCrayon[new_index])
                    self.temp_detaildata.priceArrayRedCrayon.append(self.detaildata.priceArrayRedCrayon[new_index])
                    self.temp_detaildata.whatItIsArrayRedCrayon.append(self.detaildata.whatItIsArrayRedCrayon[new_index])
                    self.temp_detaildata.linkArrayRedCrayon.append(self.detaildata.linkArrayRedCrayon[new_index])}
            }
        }
        
        if self.shadeButtonNumber == 1 && productButton == 4 {
            
            for _index in 1...self.detaildata.priceArrayRedStain.count {
                
                let new_index = _index  - 1
                
                if Float(selectedValue) >= Float(self.detaildata.priceArrayRedLiquid[new_index]) {
                    
                    self.temp_detaildata.imageArrayRedStain.append(self.detaildata.imageArrayRedStain[new_index])
                    self.temp_detaildata.shadeArrayRedStain.append(self.detaildata.shadeArrayRedStain[new_index])
                    self.temp_detaildata.brandArrayRedStain.append(self.detaildata.brandArrayRedStain[new_index])
                    self.temp_detaildata.priceArrayRedStain.append(self.detaildata.priceArrayRedStain[new_index])
                    self.temp_detaildata.whatItIsArrayRedStain.append(self.detaildata.whatItIsArrayRedStain[new_index])
                    self.temp_detaildata.linkArrayRedStain.append(self.detaildata.linkArrayRedStain[new_index])}
            }
        }
        
        if self.shadeButtonNumber == 1 && productButton == 5 {
            
            for _index in 1...self.detaildata.priceArrayRedLiner.count {
                
                let new_index = _index  - 1
                
                if Float(selectedValue) >= Float(self.detaildata.priceArrayRedLiquid[new_index]) {
                    
                    self.temp_detaildata.imageArrayRedLiner.append(self.detaildata.imageArrayRedLiner[new_index])
                    self.temp_detaildata.shadeArrayRedLiner.append(self.detaildata.shadeArrayRedLiner[new_index])
                    self.temp_detaildata.brandArrayRedLiner.append(self.detaildata.brandArrayRedLiner[new_index])
                    self.temp_detaildata.priceArrayRedLiner.append(self.detaildata.priceArrayRedLiner[new_index])
                    self.temp_detaildata.whatItIsArrayRedLiner.append(self.detaildata.whatItIsArrayRedLiner[new_index])
                    self.temp_detaildata.linkArrayRedLiner.append(self.detaildata.linkArrayRedLiner[new_index])}
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
        if self.shadeButtonNumber == 2 && productButton == 3 {
            for _index in 1...self.detaildata.priceArrayPinkCrayon.count {
                let new_index = _index  - 1
                
                if Float(selectedValue) >= Float(self.detaildata.priceArrayPinkCrayon[new_index]) {
                    
                    self.temp_detaildata.imageArrayPinkCrayon.append(self.detaildata.imageArrayPinkCrayon[new_index])
                    self.temp_detaildata.shadeArrayPinkCrayon.append(self.detaildata.shadeArrayPinkCrayon[new_index])
                    self.temp_detaildata.brandArrayPinkCrayon.append(self.detaildata.brandArrayPinkCrayon[new_index])
                    self.temp_detaildata.priceArrayPinkCrayon.append(self.detaildata.priceArrayPinkCrayon[new_index])
                    self.temp_detaildata.whatItIsArrayPinkCrayon.append(self.detaildata.whatItIsArrayPinkCrayon[new_index])
                    self.temp_detaildata.linkArrayPinkCrayon.append(self.detaildata.linkArrayPinkCrayon[new_index])
                }
            }
        }
        if self.shadeButtonNumber == 2 && productButton == 4 {
            for _index in 1...self.detaildata.priceArrayPinkStain.count {
                let new_index = _index  - 1
                
                if Float(selectedValue) >= Float(self.detaildata.priceArrayPinkStain[new_index]) {
                    
                    self.temp_detaildata.imageArrayPinkStain.append(self.detaildata.imageArrayPinkStain[new_index])
                    self.temp_detaildata.shadeArrayPinkStain.append(self.detaildata.shadeArrayPinkStain[new_index])
                    self.temp_detaildata.brandArrayPinkStain.append(self.detaildata.brandArrayPinkStain[new_index])
                    self.temp_detaildata.priceArrayPinkStain.append(self.detaildata.priceArrayPinkStain[new_index])
                    self.temp_detaildata.whatItIsArrayPinkStain.append(self.detaildata.whatItIsArrayPinkStain[new_index])
                    self.temp_detaildata.linkArrayPinkStain.append(self.detaildata.linkArrayPinkStain[new_index])
                }
            }
        }
        if self.shadeButtonNumber == 2 && productButton == 5 {
            for _index in 1...self.detaildata.priceArrayPinkLiner.count {
                let new_index = _index  - 1
                
                if Float(selectedValue) >= Float(self.detaildata.priceArrayPinkLiner[new_index]) {
                    
                    self.temp_detaildata.imageArrayPinkLiner.append(self.detaildata.imageArrayPinkLiner[new_index])
                    self.temp_detaildata.shadeArrayPinkLiner.append(self.detaildata.shadeArrayPinkLiner[new_index])
                    self.temp_detaildata.brandArrayPinkLiner.append(self.detaildata.brandArrayPinkLiner[new_index])
                    self.temp_detaildata.priceArrayPinkLiner.append(self.detaildata.priceArrayPinkLiner[new_index])
                    self.temp_detaildata.whatItIsArrayPinkLiner.append(self.detaildata.whatItIsArrayPinkLiner[new_index])
                    self.temp_detaildata.linkArrayPinkLiner.append(self.detaildata.linkArrayPinkLiner[new_index])
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
        if self.shadeButtonNumber == 3 && productButton == 3 {
            for _index in 1...self.detaildata.priceArrayBerryCrayon.count {
                let new_index = _index  - 1
                
                if Float(selectedValue) >= Float(self.detaildata.priceArrayBerryCrayon[new_index]) {
                    
                    self.temp_detaildata.imageArrayBerryCrayon.append(self.detaildata.imageArrayBerryCrayon[new_index])
                    self.temp_detaildata.shadeArrayBerryCrayon.append(self.detaildata.shadeArrayBerryCrayon[new_index])
                    self.temp_detaildata.brandArrayBerryCrayon.append(self.detaildata.brandArrayBerryCrayon[new_index])
                    self.temp_detaildata.priceArrayBerryCrayon.append(self.detaildata.priceArrayBerryCrayon[new_index])
                    self.temp_detaildata.whatItIsArrayBerryCrayon.append(self.detaildata.whatItIsArrayBerryCrayon[new_index])
                    self.temp_detaildata.linkArrayBerryCrayon.append(self.detaildata.linkArrayBerryCrayon[new_index])
                }
            }
        }
        if self.shadeButtonNumber == 3 && productButton == 4 {
            for _index in 1...self.detaildata.priceArrayBerryStain.count {
                let new_index = _index  - 1
                
                if Float(selectedValue) >= Float(self.detaildata.priceArrayBerryStain[new_index]) {
                    
                    self.temp_detaildata.imageArrayBerryStain.append(self.detaildata.imageArrayBerryStain[new_index])
                    self.temp_detaildata.shadeArrayBerryStain.append(self.detaildata.shadeArrayBerryStain[new_index])
                    self.temp_detaildata.brandArrayBerryStain.append(self.detaildata.brandArrayBerryStain[new_index])
                    self.temp_detaildata.priceArrayBerryStain.append(self.detaildata.priceArrayBerryStain[new_index])
                    self.temp_detaildata.whatItIsArrayBerryStain.append(self.detaildata.whatItIsArrayBerryStain[new_index])
                    self.temp_detaildata.linkArrayBerryStain.append(self.detaildata.linkArrayBerryStain[new_index])
                }
            }
        }
        if self.shadeButtonNumber == 3 && productButton == 5 {
            for _index in 1...self.detaildata.priceArrayBerryLiner.count {
                let new_index = _index  - 1
                
                if Float(selectedValue) >= Float(self.detaildata.priceArrayBerryLiner[new_index]) {
                    
                    self.temp_detaildata.imageArrayBerryLiner.append(self.detaildata.imageArrayBerryLiner[new_index])
                    self.temp_detaildata.shadeArrayBerryLiner.append(self.detaildata.shadeArrayBerryLiner[new_index])
                    self.temp_detaildata.brandArrayBerryLiner.append(self.detaildata.brandArrayBerryLiner[new_index])
                    self.temp_detaildata.priceArrayBerryLiner.append(self.detaildata.priceArrayBerryLiner[new_index])
                    self.temp_detaildata.whatItIsArrayBerryLiner.append(self.detaildata.whatItIsArrayBerryLiner[new_index])
                    self.temp_detaildata.linkArrayBerryLiner.append(self.detaildata.linkArrayBerryLiner[new_index])
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
        if self.shadeButtonNumber == 4 && productButton == 3 {
            for _index in 1...self.detaildata.priceArrayCoralCrayon.count {
                let new_index = _index  - 1
                
                if Float(selectedValue) >= Float(self.detaildata.priceArrayCoralCrayon[new_index]) {
                    
                    self.temp_detaildata.imageArrayCoralCrayon.append(self.detaildata.imageArrayCoralCrayon[new_index])
                    self.temp_detaildata.shadeArrayCoralCrayon.append(self.detaildata.shadeArrayCoralCrayon[new_index])
                    self.temp_detaildata.brandArrayCoralCrayon.append(self.detaildata.brandArrayCoralCrayon[new_index])
                    self.temp_detaildata.priceArrayCoralCrayon.append(self.detaildata.priceArrayCoralCrayon[new_index])
                    self.temp_detaildata.whatItIsArrayCoralCrayon.append(self.detaildata.whatItIsArrayCoralCrayon[new_index])
                    self.temp_detaildata.linkArrayCoralCrayon.append(self.detaildata.linkArrayCoralCrayon[new_index])
                }
            }
        }
        if self.shadeButtonNumber == 4 && productButton == 4 {
            for _index in 1...self.detaildata.priceArrayCoralStain.count {
                let new_index = _index  - 1
                
                if Float(selectedValue) >= Float(self.detaildata.priceArrayCoralStain[new_index]) {
                    
                    self.temp_detaildata.imageArrayCoralStain.append(self.detaildata.imageArrayCoralStain[new_index])
                    self.temp_detaildata.shadeArrayCoralStain.append(self.detaildata.shadeArrayCoralStain[new_index])
                    self.temp_detaildata.brandArrayCoralStain.append(self.detaildata.brandArrayCoralStain[new_index])
                    self.temp_detaildata.priceArrayCoralStain.append(self.detaildata.priceArrayCoralStain[new_index])
                    self.temp_detaildata.whatItIsArrayCoralStain.append(self.detaildata.whatItIsArrayCoralStain[new_index])
                    self.temp_detaildata.linkArrayCoralStain.append(self.detaildata.linkArrayCoralStain[new_index])
                }
            }
        }
        if self.shadeButtonNumber == 4 && productButton == 5 {
            for _index in 1...self.detaildata.priceArrayCoralLiner.count {
                let new_index = _index  - 1
                
                if Float(selectedValue) >= Float(self.detaildata.priceArrayCoralLiner[new_index]) {
                    
                    self.temp_detaildata.imageArrayCoralLiner.append(self.detaildata.imageArrayCoralLiner[new_index])
                    self.temp_detaildata.shadeArrayCoralLiner.append(self.detaildata.shadeArrayCoralLiner[new_index])
                    self.temp_detaildata.brandArrayCoralLiner.append(self.detaildata.brandArrayCoralLiner[new_index])
                    self.temp_detaildata.priceArrayCoralLiner.append(self.detaildata.priceArrayCoralLiner[new_index])
                    self.temp_detaildata.whatItIsArrayCoralLiner.append(self.detaildata.whatItIsArrayCoralLiner[new_index])
                    self.temp_detaildata.linkArrayCoralLiner.append(self.detaildata.linkArrayCoralLiner[new_index])
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
        if self.shadeButtonNumber == 5 && productButton == 3 {
            for _index in 1...self.detaildata.priceArrayNudeCrayon.count {
                let new_index = _index  - 1
                
                if Float(selectedValue) >= Float(self.detaildata.priceArrayNudeCrayon[new_index]) {
                    
                    self.temp_detaildata.imageArrayNudeCrayon.append(self.detaildata.imageArrayNudeCrayon[new_index])
                    self.temp_detaildata.shadeArrayNudeCrayon.append(self.detaildata.shadeArrayNudeCrayon[new_index])
                    self.temp_detaildata.brandArrayNudeCrayon.append(self.detaildata.brandArrayNudeCrayon[new_index])
                    self.temp_detaildata.priceArrayNudeCrayon.append(self.detaildata.priceArrayNudeCrayon[new_index])
                    self.temp_detaildata.whatItIsArrayNudeCrayon.append(self.detaildata.whatItIsArrayNudeCrayon[new_index])
                    self.temp_detaildata.linkArrayNudeCrayon.append(self.detaildata.linkArrayNudeCrayon[new_index])
                }
            }
        }
        if self.shadeButtonNumber == 5 && productButton == 4 {
            for _index in 1...self.detaildata.priceArrayNudeStain.count {
                let new_index = _index  - 1
                
                if Float(selectedValue) >= Float(self.detaildata.priceArrayNudeStain[new_index]) {
                    
                    self.temp_detaildata.imageArrayNudeStain.append(self.detaildata.imageArrayNudeStain[new_index])
                    self.temp_detaildata.shadeArrayNudeStain.append(self.detaildata.shadeArrayNudeStain[new_index])
                    self.temp_detaildata.brandArrayNudeStain.append(self.detaildata.brandArrayNudeStain[new_index])
                    self.temp_detaildata.priceArrayNudeStain.append(self.detaildata.priceArrayNudeStain[new_index])
                    self.temp_detaildata.whatItIsArrayNudeStain.append(self.detaildata.whatItIsArrayNudeStain[new_index])
                    self.temp_detaildata.linkArrayNudeStain.append(self.detaildata.linkArrayNudeStain[new_index])
                }
            }
        }
        if self.shadeButtonNumber == 5 && productButton == 5 {
            for _index in 1...self.detaildata.priceArrayNudeLiner.count {
                let new_index = _index  - 1
                
                if Float(selectedValue) >= Float(self.detaildata.priceArrayNudeLiner[new_index]) {
                    
                    self.temp_detaildata.imageArrayNudeLiner.append(self.detaildata.imageArrayNudeLiner[new_index])
                    self.temp_detaildata.shadeArrayNudeLiner.append(self.detaildata.shadeArrayNudeLiner[new_index])
                    self.temp_detaildata.brandArrayNudeLiner.append(self.detaildata.brandArrayNudeLiner[new_index])
                    self.temp_detaildata.priceArrayNudeLiner.append(self.detaildata.priceArrayNudeLiner[new_index])
                    self.temp_detaildata.whatItIsArrayNudeLiner.append(self.detaildata.whatItIsArrayNudeLiner[new_index])
                    self.temp_detaildata.linkArrayNudeLiner.append(self.detaildata.linkArrayNudeLiner[new_index])
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
  
        if self.shadeButtonNumber == 1 && productButton == 1 {
            return self.temp_detaildata.priceArrayRedLipstick.count
        }
        if self.shadeButtonNumber == 1 && productButton == 2 {
            return self.temp_detaildata.priceArrayRedLiquid.count
        }
        if self.shadeButtonNumber == 1 && productButton == 3 {
            return self.temp_detaildata.priceArrayRedCrayon.count
        }
        if self.shadeButtonNumber == 1 && productButton == 4 {
            return self.temp_detaildata.priceArrayRedStain.count
        }
        if self.shadeButtonNumber == 1 && productButton == 5 {
            return self.temp_detaildata.priceArrayRedLiner.count
        }
        if self.shadeButtonNumber == 2 && productButton == 1 {
            return self.temp_detaildata.priceArrayPinkLipstick.count
        }
        if self.shadeButtonNumber == 2 && productButton == 2 {
            return self.temp_detaildata.priceArrayPinkLiquid.count
        }
        if self.shadeButtonNumber == 2 && productButton == 3 {
            return self.temp_detaildata.priceArrayPinkCrayon.count
        }
        if self.shadeButtonNumber == 2 && productButton == 4 {
            return self.temp_detaildata.priceArrayPinkStain.count
        }
        if self.shadeButtonNumber == 2 && productButton == 5 {
            return self.temp_detaildata.priceArrayPinkLiner.count
        }
        if self.shadeButtonNumber == 3 && productButton == 1 {
            return self.temp_detaildata.priceArrayBerryLipstick.count
        }
        if self.shadeButtonNumber == 3 && productButton == 2 {
            return self.temp_detaildata.priceArrayBerryLiquid.count
        }
        if self.shadeButtonNumber == 3 && productButton == 3 {
            return self.temp_detaildata.priceArrayBerryCrayon.count
        }
        if self.shadeButtonNumber == 3 && productButton == 4 {
            return self.temp_detaildata.priceArrayBerryStain.count
        }
        if self.shadeButtonNumber == 3 && productButton == 5 {
            return self.temp_detaildata.priceArrayBerryLiner.count
        }
        if self.shadeButtonNumber == 4 && productButton == 1 {
            return self.temp_detaildata.priceArrayCoralLipstick.count
        }
        if self.shadeButtonNumber == 4 && productButton == 2 {
            return self.temp_detaildata.priceArrayCoralLiquid.count
        }
        if self.shadeButtonNumber == 4 && productButton == 3 {
            return self.temp_detaildata.priceArrayCoralCrayon.count
        }
        if self.shadeButtonNumber == 4 && productButton == 4 {
            return self.temp_detaildata.priceArrayCoralStain.count
        }
        if self.shadeButtonNumber == 4 && productButton == 5 {
            return self.temp_detaildata.priceArrayCoralLiner.count
        }
        if self.shadeButtonNumber == 5 && productButton == 1 {
            return self.temp_detaildata.priceArrayNudeLipstick.count
        }
        if self.shadeButtonNumber == 5 && productButton == 2 {
            return self.temp_detaildata.priceArrayNudeLiquid.count
        }
        if self.shadeButtonNumber == 5 && productButton == 3 {
            return self.temp_detaildata.priceArrayNudeCrayon.count
        }
        if self.shadeButtonNumber == 5 && productButton == 4 {
            return self.temp_detaildata.priceArrayNudeStain.count
        }
        if self.shadeButtonNumber == 5 && productButton == 5 {
            return self.temp_detaildata.priceArrayNudeLiner.count
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
        }else if self.shadeButtonNumber == 1 && productButton == 3 {
            cell.imageView?.image = UIImage(named: self.temp_detaildata.imageArrayRedCrayon[indexPath.row])
        }else if self.shadeButtonNumber == 1 && productButton == 4 {
            cell.imageView?.image = UIImage(named: self.temp_detaildata.imageArrayRedStain[indexPath.row])
        }else if self.shadeButtonNumber == 1 && productButton == 5 {
            cell.imageView?.image = UIImage(named: self.temp_detaildata.imageArrayRedLiner[indexPath.row])

        
        }else if self.shadeButtonNumber == 2 && productButton == 1 {
            cell.imageView?.image = UIImage(named: self.temp_detaildata.imageArrayPinkLipstick[indexPath.row])
        }else if self.shadeButtonNumber == 2 && productButton == 2 {
            cell.imageView?.image = UIImage(named: self.temp_detaildata.imageArrayPinkLiquid[indexPath.row])
        }else if self.shadeButtonNumber == 2 && productButton == 3 {
            cell.imageView?.image = UIImage(named: self.temp_detaildata.imageArrayPinkCrayon[indexPath.row])
        }else if self.shadeButtonNumber == 2 && productButton == 4 {
            cell.imageView?.image = UIImage(named: self.temp_detaildata.imageArrayPinkStain[indexPath.row])
        }else if self.shadeButtonNumber == 2 && productButton == 5 {
            cell.imageView?.image = UIImage(named: self.temp_detaildata.imageArrayPinkLiner[indexPath.row])
            
        }else if self.shadeButtonNumber == 3 && productButton == 1 {
            cell.imageView?.image = UIImage(named: self.temp_detaildata.imageArrayBerryLipstick[indexPath.row])
        }else if self.shadeButtonNumber == 3 && productButton == 2 {
            cell.imageView?.image = UIImage(named: self.temp_detaildata.imageArrayBerryLiquid[indexPath.row])
        }else if self.shadeButtonNumber == 3 && productButton == 3 {
            cell.imageView?.image = UIImage(named: self.temp_detaildata.imageArrayBerryCrayon[indexPath.row])
        }else if self.shadeButtonNumber == 3 && productButton == 4 {
            cell.imageView?.image = UIImage(named: self.temp_detaildata.imageArrayBerryStain[indexPath.row])
        }else if self.shadeButtonNumber == 3 && productButton == 5 {
            cell.imageView?.image = UIImage(named: self.temp_detaildata.imageArrayBerryLiner[indexPath.row])
        
        }else if self.shadeButtonNumber == 4 && productButton == 1 {
            cell.imageView?.image = UIImage(named: self.temp_detaildata.imageArrayCoralLipstick[indexPath.row])
        }else if self.shadeButtonNumber == 4 && productButton == 2 {
            cell.imageView?.image = UIImage(named: self.temp_detaildata.imageArrayCoralLiquid[indexPath.row])
        }else if self.shadeButtonNumber == 4 && productButton == 3 {
            cell.imageView?.image = UIImage(named: self.temp_detaildata.imageArrayCoralCrayon[indexPath.row])
        }else if self.shadeButtonNumber == 4 && productButton == 4 {
            cell.imageView?.image = UIImage(named: self.temp_detaildata.imageArrayCoralStain[indexPath.row])
        }else if self.shadeButtonNumber == 4 && productButton == 5 {
            cell.imageView?.image = UIImage(named: self.temp_detaildata.imageArrayCoralLiner[indexPath.row])
            
        }else if self.shadeButtonNumber == 5 && productButton == 1 {
            cell.imageView?.image = UIImage(named: self.temp_detaildata.imageArrayNudeLipstick[indexPath.row])
        }else if self.shadeButtonNumber == 5 && productButton == 2 {
            cell.imageView?.image = UIImage(named: self.temp_detaildata.imageArrayNudeLiquid[indexPath.row])
        }else if self.shadeButtonNumber == 5 && productButton == 3 {
            cell.imageView?.image = UIImage(named: self.temp_detaildata.imageArrayNudeCrayon[indexPath.row])
        }else if self.shadeButtonNumber == 5 && productButton == 4 {
            cell.imageView?.image = UIImage(named: self.temp_detaildata.imageArrayNudeStain[indexPath.row])
        }else if self.shadeButtonNumber == 5 && productButton == 5 {
            cell.imageView?.image = UIImage(named: self.temp_detaildata.imageArrayNudeLiner[indexPath.row])
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
                vc.shadeValue = self.temp_detaildata.shadeArrayRedLipstick[indexPath.row]
                vc.brandValue = self.temp_detaildata.brandArrayRedLipstick[indexPath.row]
                vc.priceValue = self.temp_detaildata.priceArrayRedLipstick[indexPath.row]
                vc.whatItIsValue = self.temp_detaildata.whatItIsArrayRedLipstick[indexPath.row]
                vc.linkValue = self.temp_detaildata.linkArrayRedLipstick[indexPath.row]
            }else if self.shadeButtonNumber == 1 && productButton == 2 {
                vc.image = UIImage(named: self.temp_detaildata.imageArrayRedLiquid[indexPath.row])!
                vc.shadeValue = self.temp_detaildata.shadeArrayRedLiquid[indexPath.row]
                vc.brandValue = self.temp_detaildata.brandArrayRedLiquid[indexPath.row]
                vc.priceValue = self.temp_detaildata.priceArrayRedLiquid[indexPath.row]
                vc.whatItIsValue = self.temp_detaildata.whatItIsArrayRedLiquid[indexPath.row]
                vc.linkValue = self.temp_detaildata.linkArrayRedLiquid[indexPath.row]
            }else if self.shadeButtonNumber == 1 && productButton == 3 {
                vc.image = UIImage(named: self.temp_detaildata.imageArrayRedCrayon[indexPath.row])!
                vc.shadeValue = self.temp_detaildata.shadeArrayRedCrayon[indexPath.row]
                vc.brandValue = self.temp_detaildata.brandArrayRedCrayon[indexPath.row]
                vc.priceValue = self.temp_detaildata.priceArrayRedCrayon[indexPath.row]
                vc.whatItIsValue = self.temp_detaildata.whatItIsArrayRedCrayon[indexPath.row]
                vc.linkValue = self.temp_detaildata.linkArrayRedCrayon[indexPath.row]
            }else if self.shadeButtonNumber == 1 && productButton == 4 {
                vc.image = UIImage(named: self.temp_detaildata.imageArrayRedStain[indexPath.row])!
                vc.shadeValue = self.temp_detaildata.shadeArrayRedStain[indexPath.row]
                vc.brandValue = self.temp_detaildata.brandArrayRedStain[indexPath.row]
                vc.priceValue = self.temp_detaildata.priceArrayRedStain[indexPath.row]
                vc.whatItIsValue = self.temp_detaildata.whatItIsArrayRedStain[indexPath.row]
                vc.linkValue = self.temp_detaildata.linkArrayRedStain[indexPath.row]
            }else if self.shadeButtonNumber == 1 && productButton == 5 {
                vc.image = UIImage(named: self.temp_detaildata.imageArrayRedLiner[indexPath.row])!
                vc.shadeValue = self.temp_detaildata.shadeArrayRedLiner[indexPath.row]
                vc.brandValue = self.temp_detaildata.brandArrayRedLiner[indexPath.row]
                vc.priceValue = self.temp_detaildata.priceArrayRedLiner[indexPath.row]
                vc.whatItIsValue = self.temp_detaildata.whatItIsArrayRedLiner[indexPath.row]
                vc.linkValue = self.temp_detaildata.linkArrayRedLiner[indexPath.row]
                
            }else if self.shadeButtonNumber == 2 && productButton == 1 {
                vc.image = UIImage(named: self.temp_detaildata.imageArrayPinkLipstick[indexPath.row])!
                vc.shadeValue = self.temp_detaildata.shadeArrayPinkLipstick[indexPath.row]
                vc.brandValue = self.temp_detaildata.brandArrayPinkLipstick[indexPath.row]
                vc.priceValue = self.temp_detaildata.priceArrayPinkLipstick[indexPath.row]
                vc.whatItIsValue = self.temp_detaildata.whatItIsArrayPinkLipstick[indexPath.row]
                vc.linkValue = self.temp_detaildata.linkArrayPinkLipstick[indexPath.row]
            }else if self.shadeButtonNumber == 2 && productButton == 2 {
                vc.image = UIImage(named: self.temp_detaildata.imageArrayPinkLiquid[indexPath.row])!
                vc.shadeValue = self.temp_detaildata.shadeArrayPinkLiquid[indexPath.row]
                vc.brandValue = self.temp_detaildata.brandArrayPinkLiquid[indexPath.row]
                vc.priceValue = self.temp_detaildata.priceArrayPinkLiquid[indexPath.row]
                vc.whatItIsValue = self.temp_detaildata.whatItIsArrayPinkLiquid[indexPath.row]
                vc.linkValue = self.temp_detaildata.linkArrayPinkLiquid[indexPath.row]
            }else if self.shadeButtonNumber == 2 && productButton == 3 {
                vc.image = UIImage(named: self.temp_detaildata.imageArrayPinkCrayon[indexPath.row])!
                vc.shadeValue = self.temp_detaildata.shadeArrayPinkCrayon[indexPath.row]
                vc.brandValue = self.temp_detaildata.brandArrayPinkCrayon[indexPath.row]
                vc.priceValue = self.temp_detaildata.priceArrayPinkCrayon[indexPath.row]
                vc.whatItIsValue = self.temp_detaildata.whatItIsArrayPinkCrayon[indexPath.row]
                vc.linkValue = self.temp_detaildata.linkArrayPinkCrayon[indexPath.row]
            }else if self.shadeButtonNumber == 2 && productButton == 4 {
                vc.image = UIImage(named: self.temp_detaildata.imageArrayPinkStain[indexPath.row])!
                vc.shadeValue = self.temp_detaildata.shadeArrayPinkStain[indexPath.row]
                vc.brandValue = self.temp_detaildata.brandArrayPinkStain[indexPath.row]
                vc.priceValue = self.temp_detaildata.priceArrayPinkStain[indexPath.row]
                vc.whatItIsValue = self.temp_detaildata.whatItIsArrayPinkStain[indexPath.row]
                vc.linkValue = self.temp_detaildata.linkArrayPinkStain[indexPath.row]
            }else if self.shadeButtonNumber == 2 && productButton == 5 {
                vc.image = UIImage(named: self.temp_detaildata.imageArrayPinkLiner[indexPath.row])!
                vc.shadeValue = self.temp_detaildata.shadeArrayPinkLiner[indexPath.row]
                vc.brandValue = self.temp_detaildata.brandArrayPinkLiner[indexPath.row]
                vc.priceValue = self.temp_detaildata.priceArrayPinkLiner[indexPath.row]
                vc.whatItIsValue = self.temp_detaildata.whatItIsArrayPinkLiner[indexPath.row]
                vc.linkValue = self.temp_detaildata.linkArrayPinkLiner[indexPath.row]

            }else if self.shadeButtonNumber == 3 && productButton == 1 {
                vc.image = UIImage(named: self.temp_detaildata.imageArrayBerryLipstick[indexPath.row])!
                vc.shadeValue = self.temp_detaildata.shadeArrayBerryLipstick[indexPath.row]
                vc.brandValue = self.temp_detaildata.brandArrayBerryLipstick[indexPath.row]
                vc.priceValue = self.temp_detaildata.priceArrayBerryLipstick[indexPath.row]
                vc.whatItIsValue = self.temp_detaildata.whatItIsArrayBerryLipstick[indexPath.row]
                vc.linkValue = self.temp_detaildata.linkArrayBerryLipstick[indexPath.row]
            }else if self.shadeButtonNumber == 3 && productButton == 2 {
                vc.image = UIImage(named: self.temp_detaildata.imageArrayBerryLiquid[indexPath.row])!
                vc.shadeValue = self.temp_detaildata.shadeArrayBerryLiquid[indexPath.row]
                vc.brandValue = self.temp_detaildata.brandArrayBerryLiquid[indexPath.row]
                vc.priceValue = self.temp_detaildata.priceArrayBerryLiquid[indexPath.row]
                vc.whatItIsValue = self.temp_detaildata.whatItIsArrayBerryLiquid[indexPath.row]
                vc.linkValue = self.temp_detaildata.linkArrayBerryLiquid[indexPath.row]
            }else if self.shadeButtonNumber == 3 && productButton == 3 {
                vc.image = UIImage(named: self.temp_detaildata.imageArrayBerryCrayon[indexPath.row])!
                vc.shadeValue = self.temp_detaildata.shadeArrayBerryCrayon[indexPath.row]
                vc.brandValue = self.temp_detaildata.brandArrayBerryCrayon[indexPath.row]
                vc.priceValue = self.temp_detaildata.priceArrayBerryCrayon[indexPath.row]
                vc.whatItIsValue = self.temp_detaildata.whatItIsArrayBerryCrayon[indexPath.row]
                vc.linkValue = self.temp_detaildata.linkArrayBerryCrayon[indexPath.row]
            }else if self.shadeButtonNumber == 3 && productButton == 4 {
                vc.image = UIImage(named: self.temp_detaildata.imageArrayBerryStain[indexPath.row])!
                vc.shadeValue = self.temp_detaildata.shadeArrayBerryStain[indexPath.row]
                vc.brandValue = self.temp_detaildata.brandArrayBerryStain[indexPath.row]
                vc.priceValue = self.temp_detaildata.priceArrayBerryStain[indexPath.row]
                vc.whatItIsValue = self.temp_detaildata.whatItIsArrayBerryStain[indexPath.row]
                vc.linkValue = self.temp_detaildata.linkArrayBerryStain[indexPath.row]
            }else if self.shadeButtonNumber == 3 && productButton == 5 {
                vc.image = UIImage(named: self.temp_detaildata.imageArrayBerryLiner[indexPath.row])!
                vc.shadeValue = self.temp_detaildata.shadeArrayBerryLiner[indexPath.row]
                vc.brandValue = self.temp_detaildata.brandArrayBerryLiner[indexPath.row]
                vc.priceValue = self.temp_detaildata.priceArrayBerryLiner[indexPath.row]
                vc.whatItIsValue = self.temp_detaildata.whatItIsArrayBerryLiner[indexPath.row]
                vc.linkValue = self.temp_detaildata.linkArrayBerryLiner[indexPath.row]

            }else if self.shadeButtonNumber == 4 && productButton == 1 {
                vc.image = UIImage(named: self.temp_detaildata.imageArrayCoralLipstick[indexPath.row])!
                vc.shadeValue = self.temp_detaildata.shadeArrayCoralLipstick[indexPath.row]
                vc.brandValue = self.temp_detaildata.brandArrayCoralLipstick[indexPath.row]
                vc.priceValue = self.temp_detaildata.priceArrayCoralLipstick[indexPath.row]
                vc.whatItIsValue = self.temp_detaildata.whatItIsArrayCoralLipstick[indexPath.row]
                vc.linkValue = self.temp_detaildata.linkArrayCoralLipstick[indexPath.row]
            }else if self.shadeButtonNumber == 4 && productButton == 2 {
                vc.image = UIImage(named: self.temp_detaildata.imageArrayCoralLiquid[indexPath.row])!
                vc.shadeValue = self.temp_detaildata.shadeArrayCoralLiquid[indexPath.row]
                vc.brandValue = self.temp_detaildata.brandArrayCoralLiquid[indexPath.row]
                vc.priceValue = self.temp_detaildata.priceArrayCoralLiquid[indexPath.row]
                vc.whatItIsValue = self.temp_detaildata.whatItIsArrayCoralLiquid[indexPath.row]
                vc.linkValue = self.temp_detaildata.linkArrayCoralLiquid[indexPath.row]
            }else if self.shadeButtonNumber == 4 && productButton == 3 {
                vc.image = UIImage(named: self.temp_detaildata.imageArrayCoralCrayon[indexPath.row])!
                vc.shadeValue = self.temp_detaildata.shadeArrayCoralCrayon[indexPath.row]
                vc.brandValue = self.temp_detaildata.brandArrayCoralCrayon[indexPath.row]
                vc.priceValue = self.temp_detaildata.priceArrayCoralCrayon[indexPath.row]
                vc.whatItIsValue = self.temp_detaildata.whatItIsArrayCoralCrayon[indexPath.row]
                vc.linkValue = self.temp_detaildata.linkArrayCoralCrayon[indexPath.row]
            }else if self.shadeButtonNumber == 4 && productButton == 4 {
                vc.image = UIImage(named: self.temp_detaildata.imageArrayCoralStain[indexPath.row])!
                vc.shadeValue = self.temp_detaildata.shadeArrayCoralStain[indexPath.row]
                vc.brandValue = self.temp_detaildata.brandArrayCoralStain[indexPath.row]
                vc.priceValue = self.temp_detaildata.priceArrayCoralStain[indexPath.row]
                vc.whatItIsValue = self.temp_detaildata.whatItIsArrayCoralStain[indexPath.row]
                vc.linkValue = self.temp_detaildata.linkArrayCoralStain[indexPath.row]
            }else if self.shadeButtonNumber == 4 && productButton == 5 {
                vc.image = UIImage(named: self.temp_detaildata.imageArrayCoralLiner[indexPath.row])!
                vc.shadeValue = self.temp_detaildata.shadeArrayCoralLiner[indexPath.row]
                vc.brandValue = self.temp_detaildata.brandArrayCoralLiner[indexPath.row]
                vc.priceValue = self.temp_detaildata.priceArrayCoralLiner[indexPath.row]
                vc.whatItIsValue = self.temp_detaildata.whatItIsArrayCoralLiner[indexPath.row]
                vc.linkValue = self.temp_detaildata.linkArrayCoralLiner[indexPath.row]

            }else if self.shadeButtonNumber == 5 && productButton == 1 {
                vc.image = UIImage(named: self.temp_detaildata.imageArrayNudeLipstick[indexPath.row])!
                vc.shadeValue = self.temp_detaildata.shadeArrayNudeLipstick[indexPath.row]
                vc.brandValue = self.temp_detaildata.brandArrayNudeLipstick[indexPath.row]
                vc.priceValue = self.temp_detaildata.priceArrayNudeLipstick[indexPath.row]
                vc.whatItIsValue = self.temp_detaildata.whatItIsArrayNudeLipstick[indexPath.row]
                vc.linkValue = self.temp_detaildata.linkArrayNudeLipstick[indexPath.row]
            }else if self.shadeButtonNumber == 5 && productButton == 2 {
                vc.image = UIImage(named: self.temp_detaildata.imageArrayNudeLiquid[indexPath.row])!
                vc.shadeValue = self.temp_detaildata.shadeArrayNudeLiquid[indexPath.row]
                vc.brandValue = self.temp_detaildata.brandArrayNudeLiquid[indexPath.row]
                vc.priceValue = self.temp_detaildata.priceArrayNudeLiquid[indexPath.row]
                vc.whatItIsValue = self.temp_detaildata.whatItIsArrayNudeLiquid[indexPath.row]
                vc.linkValue = self.temp_detaildata.linkArrayNudeLiquid[indexPath.row]
            }else if self.shadeButtonNumber == 5 && productButton == 3 {
                vc.image = UIImage(named: self.temp_detaildata.imageArrayNudeCrayon[indexPath.row])!
                vc.shadeValue = self.temp_detaildata.shadeArrayNudeCrayon[indexPath.row]
                vc.brandValue = self.temp_detaildata.brandArrayNudeCrayon[indexPath.row]
                vc.priceValue = self.temp_detaildata.priceArrayNudeCrayon[indexPath.row]
                vc.whatItIsValue = self.temp_detaildata.whatItIsArrayNudeCrayon[indexPath.row]
                vc.linkValue = self.temp_detaildata.linkArrayNudeCrayon[indexPath.row]
            }else if self.shadeButtonNumber == 5 && productButton == 4 {
                vc.image = UIImage(named: self.temp_detaildata.imageArrayNudeStain[indexPath.row])!
                vc.shadeValue = self.temp_detaildata.shadeArrayNudeStain[indexPath.row]
                vc.brandValue = self.temp_detaildata.brandArrayNudeStain[indexPath.row]
                vc.priceValue = self.temp_detaildata.priceArrayNudeStain[indexPath.row]
                vc.whatItIsValue = self.temp_detaildata.whatItIsArrayNudeStain[indexPath.row]
                vc.linkValue = self.temp_detaildata.linkArrayNudeStain[indexPath.row]
            }else if self.shadeButtonNumber == 5 && productButton == 5 {
                vc.image = UIImage(named: self.temp_detaildata.imageArrayNudeLiner[indexPath.row])!
                vc.shadeValue = self.temp_detaildata.shadeArrayNudeLiner[indexPath.row]
                vc.brandValue = self.temp_detaildata.brandArrayNudeLiner[indexPath.row]
                vc.priceValue = self.temp_detaildata.priceArrayNudeLiner[indexPath.row]
                vc.whatItIsValue = self.temp_detaildata.whatItIsArrayNudeLiner[indexPath.row]
                vc.linkValue = self.temp_detaildata.linkArrayNudeLiner[indexPath.row]

            }
        }
    }
}