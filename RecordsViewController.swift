//
//  CheckUpDateViewController.swift
//  Pedal
//
//  Created by Nabil K on 2016-12-06.
//  Copyright © 2016 Madhur Malhotra. All rights reserved.
//

import UIKit
import MessageUI

class RecordsViewController: UIViewController, MFMailComposeViewControllerDelegate {
   //TODO: input all the UIImages that need to go in here
    
    @IBOutlet weak var tableView: UITableView!
    
    var patient:Patient?
    var sortByDate = true
    var categories:[String] = ["Sensitivity", "Pulse", "Palm", "Ankle", "Standing"]
    var selectedCategory: Category?
    var selectedCheckup: Checkup?

   
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func assignImage(category:Category) -> UIImage{
        switch category{
        case .sensitivity:
            return UIImage()
        case .pulse:
            return UIImage()
        case .palm:
            return UIImage()
        case .ankle:
            return UIImage()
        case .standing:
            return UIImage()
        }
    }
    
    @IBAction func changeData(){
        self.sortByDate = !self.sortByDate
        tableView.reloadData()
    }
    
    func sendCheckup(checkup:Checkup){
       
        let email:Email = Email(checkup: checkup, recipient: patient!.doctorEmail, name: patient!.name)
        let recipients: [String] = [patient!.doctorEmail, patient!.email]
        
        
        if MFMailComposeViewController.canSendMail(){
            let mail = MFMailComposeViewController()
            mail.mailComposeDelegate = self
            mail.setToRecipients(recipients)
            mail.setSubject(email.subject)
            mail.setMessageBody(email.body, isHTML: false)
            for i in email.images{
                mail.addAttachmentData(i.data, mimeType: "image/png", fileName: i.fileName)
            }
            
            self.present(mail, animated:true, completion:nil)
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "seeCheckup"{
            if let seeCheckupCollectionVc = segue.destination as? SeeCheckupCollectionViewController{
                seeCheckupCollectionVc.checkup = selectedCheckup
            }
        }
        
        else if segue.identifier == "seeCategory"{
            if let seeCategoryViewController = segue.destination as? SeeCategoryViewController{
                
            }
        }
    }
}




extension RecordsViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if sortByDate{
            return patient!.checkups.count
        }
        
        else{
            return categories.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "checkup") as! RecordsTableViewCell
        
        if sortByDate{
            let checkup = patient!.checkups[indexPath.row]
            let dateFormatter = DateFormatter()
            dateFormatter.dateStyle = .long
            
            cell.title.text = dateFormatter.string(from: checkup.date)
            cell.sentButton.setBackgroundImage(UIImage(), for: .normal)
            
            if checkup.sent{
                cell.sentButton.setBackgroundImage(UIImage(), for: .normal)
            }
        }
        
        else{
            
            let thisCategory = categories[indexPath.row]
            self.selectedCategory = Category(rawValue: thisCategory)
            cell.title.text = thisCategory
            let imageForCategory = assignImage(category: Category(rawValue: thisCategory)!)
            cell.sentButton.setBackgroundImage(imageForCategory, for: .normal)
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if sortByDate{
            selectedCheckup = self.patient!.checkups[indexPath.row]
            performSegue(withIdentifier: "seeCheckup", sender: self)
        }
        else{
            selectedCategory = Category(rawValue: self.categories[indexPath.row])
            performSegue(withIdentifier: "seeCategory", sender: self)
        }
    }
    
    
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        var send:UITableViewRowAction?
        if sortByDate{
             send = UITableViewRowAction(style: .normal, title: "Send") { action, index in
                let checkup = self.patient!.checkups[index.row]
                self.sendCheckup(checkup: checkup)
            }
        return [send!]
        }
    
    return nil
    }
    
}


enum Category:String {
    case sensitivity = "Sensitivity"
    case pulse = "Pulse"
    case palm = "Palm"
    case ankle = "Ankle"
    case standing = "Standing"
}
