//
//  Right.swift
//  Pedal
//
//  Created by Madhur Malhotra on 12/6/16.
//  Copyright © 2016 Madhur Malhotra. All rights reserved.
//

import Foundation

struct Right {
    var pulse: Pulse
    var sensitivity: Sensitivity
    var palm: Palm
    var ankle: Ankle
    var standing: Standing
    
    init(pulse: Pulse, sensitivity: Sensitivity, palm: Palm, ankle: Ankle, standing: Standing){
        self.pulse = pulse
        self.sensitivity = sensitivity
        self.palm = palm
        self.ankle = ankle
        self.standing = standing
        
    }
}
