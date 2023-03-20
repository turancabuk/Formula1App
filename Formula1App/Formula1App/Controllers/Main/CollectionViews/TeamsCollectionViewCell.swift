//
//  TeamsCollectionViewCell.swift
//  Formula1App
//
//  Created by Turan Çabuk on 20.03.2023.
//

import UIKit

class TeamsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var TeamsImageView: UIImageView!
    @IBOutlet weak var TeamsNameLabel: UILabel!
    
    public func configureCell(model: TeamsResponse) {
        
        self.TeamsNameLabel.text = model.name
        
    }
    
}
