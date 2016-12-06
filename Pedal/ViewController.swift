//
//  ViewController.swift
//  PedalWelcomeViewController
//
//  Created by Madhur Malhotra on 12/1/16.
//  Copyright © 2016 Madhur Malhotra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var lastCheckLabel: UILabel!
    @IBOutlet weak var recommendationLabel: UILabel!
    @IBOutlet weak var checkupButton: UIButton!
    @IBOutlet weak var recordsButton: UIButton!
    @IBAction func chekupButtonPressed(_ sender: Any) {
    }
    @IBAction func recordsButtonPressed(_ sender: Any) {
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        //Check Button Style
        checkupButton.layer.cornerRadius = 10
        
        //Logs Button Style
        recordsButton.backgroundColor = .clear
        recordsButton.layer.cornerRadius = 10
        recordsButton.layer.borderWidth = 1.5
        recordsButton.layer.borderColor = UIColor(displayP3Red: 241.0/255.0, green: 90.0/255.0, blue: 91.0/255.0, alpha: 1.0).cgColor
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

