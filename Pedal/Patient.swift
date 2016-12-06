//
//  Patient.swift
//  Pedal
//
//  Created by Madhur Malhotra on 12/6/16.
//  Copyright © 2016 Madhur Malhotra. All rights reserved.
//

import Foundation

class Patient {
    
    var checkups: [Checkup]
    
    init(checkups: [Checkup]){
        self.checkups = checkups
    }
}
