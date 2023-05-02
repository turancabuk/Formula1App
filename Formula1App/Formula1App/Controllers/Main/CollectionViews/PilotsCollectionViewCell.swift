//
//  PilotsCollectionViewCell.swift
//  Formula1App
//
//  Created by Turan Çabuk on 20.03.2023.
//

import UIKit
import Kingfisher

class PilotsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var PilotsImageView: UIImageView!
    @IBOutlet weak var PilotsNameLabel: UILabel!


        PilotsNameLabel.text = model.name
        DispatchQueue.main.async {
            self.PilotsImageView.kf.setImage(with: URL(string: model.imageName ?? ""))
        }
    }
}
