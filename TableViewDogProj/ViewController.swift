//
//  ViewController.swift
//  TableViewDogProj
//
//  Created by susy zapari on 5/5/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    private let kindOfDogs = ["Schnauzer", "Cocker Spaniel", "Waimaraner", "labrador", "shih tzu", "pastor inglés"]
    
    private let imagesNames = ["Schnauzer","CockerSpaniel","Waimaraner", "Labrador", "ShihTzu", "pastorIngles"]
    
    private let imagesCountries = ["Alemania", "Inglaterra","Alemania", "Canada", "China", "Inglaterra"]
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "MyCustomTableViewCell", bundle: nil), forCellReuseIdentifier: "mycustomcell")
    }
}

// MARK: - UITableViewDataSource
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kindOfDogs.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "mycustomcell", for: indexPath) as? MyCustomTableViewCell
    
        cell!.myLabel.text = kindOfDogs[indexPath.row]
        cell?.myFirstImage.image = UIImage(named: imagesNames[indexPath.row])
        cell?.mySecondImage.image = UIImage(named: imagesCountries[indexPath.row])
        
            return cell!
        }
    }

// MARK: - UITableViewDelegate
extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        let detailViewController = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        detailViewController.dogName = kindOfDogs[indexPath.row]
        detailViewController.dogImage = imagesNames[indexPath.row]
        
        self.present(detailViewController, animated: true, completion: nil)
    }

}
