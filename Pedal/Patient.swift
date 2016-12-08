//
//  Patient.swift
//  Pedal
//
//  Created by Madhur Malhotra on 12/6/16.
//  Copyright © 2016 Madhur Malhotra. All rights reserved.
//

import Foundation

class Patient {
    
    var name: String
    var email: String
    var doctorEmail: String
    var checkups: [Checkup]
    
    init(checkups: [Checkup], name:String, email:String, doctorEmail:String){
        self.checkups = checkups
        self.name = name
        self.email = email
        self.doctorEmail = doctorEmail
    }
}
