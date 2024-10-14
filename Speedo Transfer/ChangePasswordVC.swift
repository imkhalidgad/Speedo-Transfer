//
//  ChangePasswordVC.swift
//  Speedo Transfer
//
//

import UIKit

class ChangePasswordVC: UIViewController {

    
    @IBOutlet weak var currentPassword: CustomTextField!
    @IBOutlet weak var newPassword: CustomTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.style = .editor
        title = "Change Password"
        
        configureTextFields()
    }
    
    private func configureTextFields() {
        currentPassword.setType(.password)
        currentPassword.placeholder = "Enter your current Password"
        
        newPassword.setType(.password)
        newPassword.placeholder = "Enter your new Password"
    }
    
}
