//
//  NewsViewController.swift
//  Formula1App
//
//  Created by Turan Çabuk on 18.03.2023.
//

import UIKit

class NewsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var NewsTableView: UITableView!
    
    var viewModel: MainViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NewsTableView.delegate = self
        NewsTableView.dataSource = self

        viewModel = MainViewModel()
        
        guard let viewModel = viewModel else {return}
        viewModel.fetchNewsModel {_ in
            DispatchQueue.main.async {
                self.NewsTableView.reloadData()
            }
        }
    }

}
extension NewsViewController {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: NewsTableViewCell = (NewsTableView.dequeueReusableCell(withIdentifier: "cellIdentifier") as? NewsTableViewCell)!
        let article = viewModel.newsList[indexPath.row]
        cell.configureCell(Model: article)
        return cell

    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        viewModel.newsList.count
    }
}
