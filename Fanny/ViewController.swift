//
//  ViewController.swift
//  Fanny
//
//  Created by Cindy Nguyen on 08/06/2022.
//

import UIKit

class ViewController: UIViewController {
    var distanceValue: Int = 0
    var informationText: String = ""
    let distanceInfoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpViews()
        self.configureComponents()
        self.setUpConstraints()
    }
    
    func setUpViews() {
        self.view.addSubview(distanceInfoLabel)
    }
    
    func configureComponents() {
        if distanceValue < 200 {
            self.distanceInfoLabel.textColor = .red
            informationText = "Vous êtes trop proche du ventilateur, reculez!"
            
        } else {
            self.distanceInfoLabel.textColor = .green
            informationText = "Vous êtes à bonne distance 👍"
        }
        self.distanceInfoLabel.text = informationText
        self.distanceInfoLabel.numberOfLines = 0
        self.distanceInfoLabel.textAlignment = .center
    }
    
    func setUpConstraints() {
        distanceInfoLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25).isActive = true
        distanceInfoLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25).isActive = true
        distanceInfoLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 35).isActive = true
    }
}

