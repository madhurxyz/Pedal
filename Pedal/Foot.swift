//
//  Foot.swift
//  Pedal
//
//  Created by Madhur Malhotra on 12/6/16.
//  Copyright © 2016 Madhur Malhotra. All rights reserved.
//

import Foundation
import UIKit
struct Foot {
    var pulse: Pulse
    var sensitivity: Sensitivity
    var palm: Palm
    var ankle: Ankle
    var standing: Standing
    var side: Bool
    
    init(pulse: Pulse, sensitivity: Sensitivity, palm: Palm, ankle: Ankle, standing: Standing, side: Bool){
        self.pulse = pulse
        self.sensitivity = sensitivity
        self.palm = palm
        self.ankle = ankle
        self.standing = standing
        self.side = side
    }
    
    func itemByCategory(category:Category) -> (UIImage, UIImage?){
        switch category {
        case .ankle:
            return (self.ankle.image, nil)
        case .palm:
            return (self.palm.image, nil)
        case .standing:
            return (self.standing.image, nil)
        case .sensitivity:
            return (self.sensitivity.highSense, self.sensitivity.lowSense)
        default:
            return (self.ankle.image, self.ankle.image) // fill with warning image later for debug purposes
        }
    }
}
