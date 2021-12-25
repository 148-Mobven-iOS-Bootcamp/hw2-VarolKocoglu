//
//  ViewController.swift
//  VarolKocogluHomework2
//
//  Created by varol on 24.12.2021.
//

import UIKit

protocol DataDelegate {
    func sendToText(string: String)
}

class ViewController: UIViewController, DataDelegate{

    @IBOutlet weak var newAddedLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    //This part is about navitagion
    @IBAction func addSenteceByNotification(_ sender: Any) {
        let notificationCenter: NotificationCenter = NotificationCenter.default
        notificationCenter.addObserver(self, selector: #selector(self.getTextByNotification), name: .notificationA, object: nil)

    }
    
    @objc func getTextByNotification(notification: NSNotification) {
        self.newAddedLabel.text = notification.object as? String
    }
    
    //This part is about closure
    
    @IBAction func addSentenceByClosure(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ClosureViewController") as! ClosureViewController
        vc.completion = { dict in
            self.newAddedLabel.text = dict["sentence"] as? String
        }
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    //This part is about delegate
    @IBAction func addSentenceByDelegate(_ sender: Any) {
        perform(#selector(advanceDelegate), with: nil, afterDelay: 2)
    }
    
    //For pass to new page an giving authorization
    @objc func advanceDelegate () {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "DelegationViewController") as! DelegationViewController
        vc.delegate = self
        self.navigationController?.pushViewController(vc, animated: true)
    //    present(vc, animated: true, completion: nil) pop etc not use
    }
    
    func sendToText(string: String) {
        self.newAddedLabel.text = string
    }
    
     
    
    
    
}

