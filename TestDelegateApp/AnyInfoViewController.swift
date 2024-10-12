//
//  AnyInfoViewController.swift
//  TestDelegateApp
//
//  Created by Кирилл Сысоев on 12.10.24.
//

import UIKit

class AnyInfoViewController: UIViewController {

    @IBOutlet weak var infoLabel: UILabel!
    
    var delegate : ViewControllerDelegate?
    
    var anyInfo = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        infoLabel.text = anyInfo
    }
    
    @IBAction func closeButtonTapped(_ sender: Any) {
        delegate?.sendMessage(anyInfo, "anyInfoVC")
    }

}
