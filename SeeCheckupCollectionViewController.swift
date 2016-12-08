//
//  SeeCollectionViewController.swift
//  Pedal
//
//  Created by Nabil K on 2016-12-06.
//  Copyright © 2016 Madhur Malhotra. All rights reserved.
//

import UIKit

class SeeCheckupCollectionViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    var checkup:Checkup?
    var leftFoot: Foot?
    var RightFoot: Foot?

     // true:right, false:left
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.leftFoot = checkup!.left
        self.RightFoot = checkup!.right
    }
}



extension SeeCheckupCollectionViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6 // number of attributes in Right and Left foot
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let row = indexPath.row
        let selectedFoot: Foot?
    
        
        if self.segmentedControl.selectedSegmentIndex == 0 {
            selectedFoot = leftFoot
        }
        
        else{
            selectedFoot = RightFoot
        }
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! CheckupCollectionViewCell
        cell.pulseView.isHidden = true
        
        switch row{

        case 0:  // high sense
            cell.image.image = selectedFoot!.sensitivity.highSense
            cell.title.text = "High Sensitivity"
        
        case 1: // low sense
            cell.image.image = selectedFoot!.sensitivity.lowSense
            cell.title.text = "Low Sensitivity"
            
        case 2: //Palm
            cell.image.image = selectedFoot!.palm.image
            cell.title.text = "Palm"
            
        case 3: //Ankle
            cell.image.image = selectedFoot!.ankle.image
            cell.title.text = "Ankle"
            
        case 4: //Standing
            cell.image.image = selectedFoot!.standing.image
            cell.title.text = "Standing"
            
        case 5:
            
            let pulseView = PulseView()
            pulseView.beatsLabel.text = String(selectedFoot!.pulse.beats)
            pulseView.stengthLabel.text = String(selectedFoot!.pulse.strength)
            pulseView.beatsBar.setValue(Float(selectedFoot!.pulse.beats), animated: false)
            pulseView.strengthBar.setValue(Float(selectedFoot!.pulse.strength), animated: false)
            cell.contentView.addSubview(pulseView)

        default:
            break
        }
    
     return cell
    }
}

    
