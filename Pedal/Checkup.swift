//
//  Checkup.swift
//  Pedal
//
//  Created by Madhur Malhotra on 12/6/16.
//  Copyright © 2016 Madhur Malhotra. All rights reserved.
//

import Foundation

class Checkup {
    
    var left: Left
    var right: Right
    var date: Date
    
    init(left: Left, right: Right, date: Date){
        self.left = left
        self.right = right
        self.date = date
    }
    
}
