//
//  MyCustomTableViewCell.swift
//  TableViewDogProj
//
//  Created by susy zapari on 5/5/21.
//

import UIKit

class MyCustomTableViewCell: UITableViewCell {

    @IBOutlet weak var myFirstImage: UIImageView!
    @IBOutlet weak var mySecondImage: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
        myLabel.font = UIFont.boldSystemFont(ofSize: 20)
        myLabel.textColor = .blue
        
        myLabel.numberOfLines = 0
        
        backgroundColor = .gray
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
