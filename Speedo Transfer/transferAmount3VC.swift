//
//  transferAmount3VC.swift
//  Speedo Transfer
//
//

import UIKit

class transferAmount3VC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.style = .editor
        title = "Transfer"
    }
    
    @IBAction func backHomeBtnTapped(_ sender: Any) {
        self.tabBarController?.selectedIndex = 0
        
        let balance = "$425"
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "balanceID"), object: nil, userInfo: ["balance":balance])
    }
    
    
    @IBAction func addFavouriteBtnTapped(_ sender: Any) {
        showALert(title: "Add To Favourite", message: "Added in Favourite List Successfully!")
    }
    
    
}
