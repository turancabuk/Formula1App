//
//  MainViewController.swift
//  Formula1App
//
//  Created by Turan Çabuk on 20.03.2023.
//

import UIKit

class MainViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {


    let viewModel = MainViewModel()
    
    @IBOutlet weak var TeamsCollectionView: UICollectionView!
    @IBOutlet weak var PilotsCollectionView: UICollectionView!
    @IBOutlet weak var CircuitsCollectionView: UICollectionView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        viewModel.fetchTeams()
        TeamsCollectionView.delegate = self
        TeamsCollectionView.dataSource = self
        TeamsCollectionView.reloadData()

    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.teamsList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let teamsList = TeamsCollectionView.dequeueReusableCell(withReuseIdentifier: "TeamsCollectionViewID", for: indexPath) as! TeamsCollectionViewCell
        guard let teamsResponse = viewModel.teamsList[indexPath.row] as? TeamsResponse else {
            return UICollectionViewCell()
        }
        teamsList.configureCell(model: teamsResponse)
        return teamsList
    }
}

