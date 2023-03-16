//
//  MainViewModel.swift
//  Formula1App
//
//  Created by Turan Çabuk on 15.03.2023.
//

import Foundation

final class MainViewModel {
    
    private let webservice: MainWebserviceProtocol
    
    init(webservice: MainWebserviceProtocol) {
        self.webservice = webservice
    }
    
}


