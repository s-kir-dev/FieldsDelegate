//
//  ViewController.swift
//  TestDelegateApp
//
//  Created by Кирилл Сысоев on 12.10.24.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var phoneNumberField: UITextField!
    @IBOutlet weak var anyInfoField: UITextField!
    @IBOutlet weak var e_mailField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneNumberField.delegate = self
        anyInfoField.delegate = self
        e_mailField.delegate = self
    }
    
    @IBAction func backButtonTapped(_ segue: UIStoryboardSegue) {
        debugPrint("I'm on the root VC")
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == phoneNumberField && !phoneNumberField.text!.isEmpty {
            performSegue(withIdentifier: "phoneNumberVC", sender: nil)
        } else if textField == anyInfoField && !anyInfoField.text!.isEmpty {
            performSegue(withIdentifier: "anyInfoVC", sender: nil)
        } else if textField == e_mailField && !e_mailField.text!.isEmpty {
            performSegue(withIdentifier: "eMailVC", sender: nil)
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let phoneNumberVC = segue.destination as? PhoneViewController {
            phoneNumberVC.delegate = self
            phoneNumberVC.phoneNumber = phoneNumberField.text!
            phoneNumberField.text = ""
        } else if let anyInfoVC = segue.destination as? AnyInfoViewController {
            anyInfoVC.delegate = self
            anyInfoVC.anyInfo = anyInfoField.text!
            anyInfoField.text = ""
        } else if let eMailVC = segue.destination as? E_MailViewController {
            eMailVC.delegate = self
            eMailVC.email = e_mailField.text!
            e_mailField.text = ""
        }
    }
    
}

extension ViewController: ViewControllerDelegate {
    func sendMessage(_ message: String, _ identifier: String) {
        if identifier == "anyInfoVC" {
            anyInfoField.text = message
            debugPrint(message + "any info")
        } else if identifier == "phoneNumberVC" {
            phoneNumberField.text = message
            debugPrint(message + "phone number")
        } else if identifier == "emailVC" {
            e_mailField.text = message
            debugPrint(message + "e-mail")
        }
    }
}

