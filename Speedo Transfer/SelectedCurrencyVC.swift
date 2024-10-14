//
//  SelectedCurrencyVC.swift
//  SpeedoTransfer
//

import UIKit

class SelectedCurrencyVC: UIViewController {
    
    @IBOutlet weak var currenctTableView: UITableView!
    
    var countries: [Country] = [Country(image: UIImage(named: "Egypt")!, label: "Egypt"), Country(image: UIImage(named: "unitedStates")!, label: "US") ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        currenctTableView.delegate = self
        currenctTableView.dataSource = self
        
            super.viewDidLoad()
            
            self.navigationItem.style = .editor
            title = "Select Currancy"
            
        }
        
        @IBAction func getStartedBtnTapped(_ sender: Any) {
            let addCards = self.storyboard?.instantiateViewController(withIdentifier: "AddCardVC") as! AddCardVC
            self.navigationController?.pushViewController(addCards, animated: true)
        }
}

extension SelectedCurrencyVC : UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = currenctTableView.dequeueReusableCell(withIdentifier: "CurrencyCell", for: indexPath) as! CurrencyCell

        let country = countries[indexPath.row]
        cell.currencyImage.image = country.image
        cell.currencyLabel.text = country.label
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as! CurrencyCell
            cell.checkImage.image = UIImage(named: "checkMark")
//        cell.backgroundColor = .blue
//        tableView.deselectRow(at: indexPath, animated: true	)
      //  currenctTableView.deselectRow(at: indexPath, animated: true)
    }
}
