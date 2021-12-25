//
//  ClosureViewController.swift
//  VarolKocogluHomework2
//
//  Created by varol on 25.12.2021.
//

import UIKit

class ClosureViewController: UIViewController {

    @IBOutlet weak var textFieldClosure: UITextField!
    
    typealias completionHandler = ([String:Any]) -> Void
    var completion: completionHandler?
    
    
    var dataTransferClosure: ((String) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //for sending text and back to homepage
    @IBAction func sendDataByClosure(_ sender: UIButton) {
            guard let sentence = textFieldClosure.text else {return}
            guard let completionBlock = completion else {return}
            let dict = ["sentence": sentence]
            completionBlock(dict)
            self.navigationController?.popViewController(animated: true)

    }
    
}
