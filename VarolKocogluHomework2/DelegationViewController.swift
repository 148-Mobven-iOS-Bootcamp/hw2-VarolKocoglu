//
//  DelegationViewController.swift
//  VarolKocogluHomework2
//
//  Created by varol on 25.12.2021.
//

import UIKit

class DelegationViewController: UIViewController {
    
    var okMoveDataHere: String = ""
    var delegate: DataDelegate?
    

    @IBOutlet weak var delegateLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //For sending date and back to homepage
    @IBAction func delegateSendButton(_ sender: Any) {
        delegate?.sendToText(string: delegateLabel.text!)
        self.navigationController?.popViewController(animated: true)
    }
}
