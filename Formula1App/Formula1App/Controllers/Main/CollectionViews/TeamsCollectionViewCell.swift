//
//  TeamsCollectionViewCell.swift
//  Formula1App
//
//  Created by Turan Çabuk on 20.03.2023.
//

import UIKit
import Kingfisher

class TeamsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var TeamsImageView: UIImageView!
    @IBOutlet weak var TeamsNameLabel: UILabel!
    
    public func configureCell(model: TeamsResponse) {
        self.TeamsNameLabel.text = model.name
        DispatchQueue.main.async {
            self.TeamsImageView.kf.setImage(with: URL(string: model.logo ?? ""))
        }
        
    }
    
}
