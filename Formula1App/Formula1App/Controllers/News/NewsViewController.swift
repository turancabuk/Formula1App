//
//  NewsViewController.swift
//  Formula1App
//
//  Created by Turan Çabuk on 18.03.2023.
//

import UIKit

class NewsViewController: UIViewController {

    @IBOutlet weak var NewsTableView: UITableView!
    
    var viewModel: MainViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        NewsTableView.delegate = self
//        NewsTableView.dataSource = self

        let webservice = MainWebservice()
        viewModel = MainViewModel(webservice: webservice)
        
//        viewModel.fetchNewsModel { [weak self] result in
//            switch result {
//            case .success:
//                DispatchQueue.main.async {
//                    self?.NewsTableView.reloadData()
//                }
//            case .failure(let error):
//                print("Haberler indirilemedi: \(error.localizedDescription)")
//            }
//        }
    }
}

extension NewsViewController {
    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//        let cell: NewsTableViewCell = (NewsTableView.dequeueReusableCell(withIdentifier: "cellIdentifier") as? NewsTableViewCell)!
//        let article = viewModel.newsList[indexPath.row]
//        cell.configureCell(Model: article)
//        return cell
//
//    }
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//
//        viewModel.newsList.count
//    }
}
