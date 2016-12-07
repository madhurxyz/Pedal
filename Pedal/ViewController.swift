//
//  ViewController.swift
//  PedalWelcomeViewController
//
//  Created by Madhur Malhotra on 12/1/16.
//  Copyright © 2016 Madhur Malhotra. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var lastCheckLabel: UILabel!
    @IBOutlet weak var recommendationLabel: UILabel!
    @IBOutlet weak var checkupButton: UIButton!
    @IBOutlet weak var recordsButton: UIButton!
    
    let name = "Nabil"
    let recommendation = "You should take another look today!" //changes based on how long ago the previous check was
    
    let calendar =  Calendar(identifier: .gregorian)
    let format = DateComponentsFormatter()
    
    
    @IBAction func chekupButtonPressed(_ sender: Any) {
    
    }
    @IBAction func recordsButtonPressed(_ sender: Any) {
    
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        format.maximumUnitCount = 2
        format.unitsStyle = .full
        format.allowedUnits = [.weekOfMonth]
        
        let todaysDate = Date()
        let lastCheckDate = calendar.date(from: DateComponents(year: 2014, month:  11, day: 10, hour: 22, minute: 39))! //Replace with date of last check
        
        let lastCheck = format.string(from: lastCheckDate, to: todaysDate)
        
        //Welcome Labels
        nameLabel.text = "Hi \(name),"
        lastCheckLabel.text = "\(lastCheck!) ago."
        recommendationLabel.text = recommendation
        
        //Checkup Button
        checkupButton.layer.cornerRadius = 10
        
        //Records Button Style
        recordsButton.backgroundColor = .clear
        recordsButton.layer.cornerRadius = 10
        recordsButton.layer.borderWidth = 1.5
        recordsButton.layer.borderColor = UIColor(displayP3Red: 241.0/255.0, green: 90.0/255.0, blue: 91.0/255.0, alpha: 1.0).cgColor

        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    //This function tells us how long ago the patient had their last checkup
    //Currently it takes in no arguments
    //When the Records functionality is built, we will be passing in Today's date and the date of the last checkup
    //For now, we are just picking two random dates.
    func getHowLongAgo() -> String {
        return "Hi"
    }
    
}

