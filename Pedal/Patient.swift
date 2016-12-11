//
//  Patient.swift
//  Pedal
//
//  Created by Madhur Malhotra on 12/6/16.
//  Copyright © 2016 Madhur Malhotra. All rights reserved.
//

import Foundation
import RealmSwift

class Patient: Object {
    
    dynamic var name: String
    dynamic var email: String
    dynamic var doctorEmail: String
    dynamic var checkups: [Checkup]
    
    init(checkups: [Checkup], name:String, email:String, doctorEmail:String){
        self.checkups = checkups
        self.name = name
        self.email = email
        self.doctorEmail = doctorEmail
    }
    

}
