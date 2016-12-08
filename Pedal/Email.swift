//
//  Email.swift
//  
//
//  Created by Nabil K on 2016-12-08.
//
//

import Foundation
import UIKit

struct Email {
    
    var recipient:String?
    var subject:String
    var images: [(data:Data,fileName:String)] = []
    var body:String
   
    
    
    init(checkup:Checkup, recipient:String, name:String){
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        
        
        self.recipient = recipient
        self.subject = "Pedal check from \(name) on \(dateFormatter.string(from: checkup.date))"
        
        let imageNames: [String] = ["leftAnkle, rightAnkle, leftPalm, rightPalm, leftStanding, rightStanding, leftHighSense, rightHighSense, leftLowSense, leftHighSense"]
        
        let leftAnkleImageData = UIImagePNGRepresentation(checkup.left.ankle.image)
        let leftPalmImageData = UIImagePNGRepresentation(checkup.left.palm.image)
        let leftStandingData = UIImagePNGRepresentation(checkup.left.standing.image)
        let leftSenseHighImageData = UIImagePNGRepresentation(checkup.left.sensitivity.highSense)
        let leftSenseLowImageData = UIImagePNGRepresentation(checkup.left.sensitivity.lowSense)
        
        let rightAnkleImageData = UIImagePNGRepresentation(checkup.right.ankle.image)
        let rightPalmImageData = UIImagePNGRepresentation(checkup.right.palm.image)
        let rightStandingData = UIImagePNGRepresentation(checkup.right.standing.image)
        let rightSenseHighImageData = UIImagePNGRepresentation(checkup.right.sensitivity.highSense)
        let rightSenseLowImageData = UIImagePNGRepresentation(checkup.right.sensitivity.lowSense)
        
        let allImages: [Data?] = [leftAnkleImageData, rightAnkleImageData, leftPalmImageData, rightPalmImageData, leftStandingData, rightStandingData, leftSenseHighImageData, rightSenseHighImageData, leftSenseLowImageData, rightSenseLowImageData]
        
        for i in 0...allImages.count {
            images.append((allImages[i]!, imageNames[i]))
        }
        
        let pulseFeltRight = checkup.left.pulse.felt
        let pulseFeltLeft  = checkup.right.pulse.felt
        
        let pulseBeatLeft = checkup.left.pulse.beats
        let pulseBeatRight = checkup.right.pulse.beats
        
        let pulseStrengthLeft = checkup.left.pulse.strength
        let pulseStrengthRight = checkup.right.pulse.strength
        
        let reportRight:String = "Left Foot: \n  Pulse: \(pulseFeltLeft) \n Beats: \(pulseBeatLeft), \n Strength\(pulseStrengthLeft) \n \n"
        let reportLeft:String =  "Right Foot: \n  Pulse: \(pulseFeltRight) \n Beats: \(pulseBeatRight), \n Strength\(pulseStrengthRight)"
        
        self.body = reportRight + reportLeft
   
    }
}
