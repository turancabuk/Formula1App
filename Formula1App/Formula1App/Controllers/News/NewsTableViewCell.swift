//
//  NewsTableViewCell.swift
//  Formula1App
//
//  Created by Turan Çabuk on 18.03.2023.
//

import UIKit

class NewsTableViewCell: UITableViewCell {

    @IBOutlet weak var newsTitleLabel: UILabel!
    @IBOutlet weak var newsSourceLabel: UILabel!
    
    
    func configureCell(Model: NewsModel) {
        newsTitleLabel.text = Model.title
        newsSourceLabel.text = Model.source
    }
    
}

