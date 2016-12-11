//
//  Checkup.swift
//  Pedal
//
//  Created by Madhur Malhotra on 12/6/16.
//  Copyright © 2016 Madhur Malhotra. All rights reserved.
//

import Foundation
import RealmSwift

class Checkup: Object {
    
    dynamic var left: Foot
    dynamic var right: Foot
    dynamic var date: Date
    dynamic var sent: Bool
    
    init(left: Foot, right: Foot, date: Date, sent: Bool){
        self.left = left
        self.right = right
        self.date = date
        self.sent = sent
    }
    
}
