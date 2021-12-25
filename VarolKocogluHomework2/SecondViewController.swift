//
//  SecondViewController.swift
//  VarolKocogluHomework2
//
//  Created by varol on 24.12.2021.
//

import UIKit


class SecondViewController: UIViewController {

    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    var dataTransferClosure: ((String) -> Void)?
    
    
    //For back to first page
    @IBAction func addButton(_ sender: UIButton) {
        NotificationCenter.default.post(name: .notificationA, object: textField.text)
        self.navigationController?.popViewController(animated: true)
    }

}
