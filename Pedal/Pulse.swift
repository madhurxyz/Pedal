//
//  Pulse.swift
//  Pedal
//
//  Created by Madhur Malhotra on 12/6/16.
//  Copyright © 2016 Madhur Malhotra. All rights reserved.
//

import Foundation

struct Pulse {
    var felt: Bool
    var beats: Int
    var strength: Int
    
    init(felt: Bool, beats: Int, strength: Int){
        self.felt = felt
        self.beats = beats
        self.strength = strength
    }
}
