//
//  DetailViewController.swift
//  TableViewDogProj
//
//  Created by susy zapari on 6/2/21.
//

import UIKit

class DetailViewController: UIViewController {
    
    var dogName = ""
    var dogImage = ""
    
    @IBOutlet weak var dogNameLabel: UILabel!
    @IBOutlet weak var dogImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(dogName)
        dogNameLabel.text = dogName
        dogImageView.image = UIImage(named: dogImage)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
