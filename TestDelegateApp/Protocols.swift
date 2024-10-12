//
//  Protocols.swift
//  TestDelegateApp
//
//  Created by Кирилл Сысоев on 12.10.24.
//

import Foundation


protocol ViewControllerDelegate: AnyObject {
    func sendMessage(_ message: String, _ indentidier: String)
}
