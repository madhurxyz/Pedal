//
//  CustomNavigationController.swift
//  Pedal
//
//  Created by Madhur Malhotra on 12/6/16.
//  Copyright © 2016 Madhur Malhotra. All rights reserved.
//

import UIKit

class StorageController: UINavigationController {

    //Pulse
    var leftFelt: Bool?
    var leftBeats: Int?
    var leftStrength: Int?
    
    var rightFelt: Bool?
    var rightBeats: Int?
    var rightStrength: Int?
    
    //Sensitivity
    var leftHighSense: UIImage?
    var leftLowSense: UIImage?
    
    var rightHighSense: UIImage?
    var rightLowSense: UIImage?
    
    //Palm
    var leftPalmImage: UIImage?
    var rightPalmImage: UIImage?
    
    //Ankle
    var leftAnkleImage: UIImage?
    var rightAnkleImage: UIImage?
    
    //Standing
    var leftStandingImage: UIImage?
    var rightStandingImage: UIImage?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    func buildCheckup() -> Checkup {
        
        //Date
        let date = Date()
        
        //Sent
        let sent = false
        
        //Left
        let leftPulse = Pulse(felt: leftFelt!, beats: leftBeats!, strength: leftStrength!)
        let leftSense = Sensitivity(highSense: leftHighSense!, lowSense: leftLowSense!)
        let leftPalm = Palm(image: leftPalmImage!)
        let leftAnkle = Ankle(image: leftAnkleImage!)
        let leftStanding = Standing(image: leftStandingImage!)
    
        //Right
        let rightPulse = Pulse(felt: rightFelt!, beats: rightBeats!, strength: rightStrength!)
        let rightSense = Sensitivity(highSense: rightHighSense!, lowSense: rightLowSense!)
        let rightPalm = Palm(image: rightPalmImage!)
        let rightAnkle = Ankle(image: rightAnkleImage!)
        let rightStanding = Standing(image: rightStandingImage!)
        
        //LeftFoot
        let leftFoot = Foot(pulse: leftPulse, sensitivity: leftSense, palm: leftPalm, ankle: leftAnkle, standing: leftStanding, side: false)
        
        //RightFoot
        let rightFoot = Foot(pulse: rightPulse, sensitivity: rightSense, palm: rightPalm, ankle: rightAnkle, standing: rightStanding, side: true)
        
        //Checkup
        let checkup = Checkup(left: leftFoot, right: rightFoot, date: date, sent: sent)
        
        return checkup
        
    }
    
    
    

}
