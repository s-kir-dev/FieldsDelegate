//
//  E-MailViewController.swift
//  TestDelegateApp
//
//  Created by Кирилл Сысоев on 12.10.24.
//

import UIKit

class E_MailViewController: UIViewController {

    var email = ""
    
    @IBOutlet weak var emailLabel: UILabel!
    var delegate : ViewControllerDelegate?

    
    override func viewDidLoad() {
        super.viewDidLoad()

        emailLabel.text = email
    }
    
    @IBAction func closeButtonTapped(_ sender: Any) {
        delegate?.sendMessage(email, "eMailVC")
    }


}
