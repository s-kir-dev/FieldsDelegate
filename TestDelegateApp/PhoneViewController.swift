//
//  PhoneViewController.swift
//  TestDelegateApp
//
//  Created by Кирилл Сысоев on 12.10.24.
//

import UIKit

class PhoneViewController: UIViewController {

    var phoneNumber = ""
    
    @IBOutlet weak var phoneNumberLabel: UILabel!
    
    var delegate : ViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        phoneNumberLabel.text = phoneNumber
    }
    
    @IBAction func closeButtonTapped(_ sender: Any) {
        delegate?.sendMessage(phoneNumber, "phoneNumberVC")
    }

}
