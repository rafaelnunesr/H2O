//
//  ViewController.swift
//  H2O
//
//  Created by Rafael Nunes Rios on 3/24/21.
//

import UIKit

class ViewController: UIViewController {

    let settings: UIButton = UIButton()
    let cupButton: UIButton = UIButton()
    let cupDetailsLabel: UILabel = UILabel()
    let tank: UIView = UIView()
    let percentageLabel: UILabel = UILabel()
    let water: UIView = UIView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
    }
    
    private func setup() {
        self.setupHierarchy()
        self.setupComponents()
    }
    
    private func setupHierarchy() {
        self.view.addSubview(self.settings)
        self.view.addSubview(self.cupButton)
        self.view.addSubview(self.cupDetailsLabel)
        self.view.addSubview(self.tank)
        self.tank.addSubview(self.water)
        self.tank.addSubview(self.percentageLabel)
    }
    
    private func setupComponents() {
        self.setupSettings()
        self.setupCupButton()
        self.setupCupDetailsLabel()
        self.setupTank()
        self.setupWater()
        self.setupPercentageLabel()
    }
    
    private func setupSettings() {
        setupSettingsConstraints()
        self.settings.setBackgroundImage(UIImage(systemName: "gearshape.fill"), for: .normal)
        self.settings.tintColor = .blue
    }
    
    private func setupCupButton() {
        setupCupButtonConstraints()
        self.cupButton.setBackgroundImage(UIImage(systemName: "arrow.up.bin"), for: .normal)
        self.cupButton.tintColor = .blue
    }
    
    private func setupCupDetailsLabel() {
        setupCupDetailsLabelConstraints()
        self.cupDetailsLabel.text = "180 ml"
        self.cupDetailsLabel.textColor = .gray
        self.cupDetailsLabel.textAlignment = .center
    }
    
    private func setupTank() {
        setupTankConstraints()
        self.tank.backgroundColor = .systemGray5
        self.tank.layer.cornerRadius = 125
        self.tank.clipsToBounds = true
    }
    
    private func setupWater() {
        setupWaterConstraints()
        self.water.backgroundColor = .blue
    }
    
    private func setupPercentageLabel() {
        setupPercentageLabelConstraints()
        percentageLabel.textAlignment = .center
        percentageLabel.text = " 30 %"
        percentageLabel.textColor = .white
        percentageLabel.font = UIFont(name: "Arial", size: 60)
    }
    
}

extension ViewController {
    
    func setupSettingsConstraints() {
        let iconSize: CGFloat = 40
        settings.translatesAutoresizingMaskIntoConstraints = false
        settings.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30).isActive = true
        settings.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30).isActive = true
        settings.widthAnchor.constraint(equalToConstant: iconSize).isActive = true
        settings.heightAnchor.constraint(equalToConstant: iconSize).isActive = true
    }
    
    func setupCupButtonConstraints() {
        let iconSize: CGFloat = 40
        cupButton.translatesAutoresizingMaskIntoConstraints = false
        cupButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 90).isActive = true
        cupButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        cupButton.widthAnchor.constraint(equalToConstant: iconSize).isActive = true
        cupButton.heightAnchor.constraint(equalToConstant: iconSize).isActive = true
    }
    
    func setupCupDetailsLabelConstraints() {
        cupDetailsLabel.translatesAutoresizingMaskIntoConstraints = false
        cupDetailsLabel.topAnchor.constraint(equalTo: cupButton.bottomAnchor).isActive = true
        cupDetailsLabel.centerXAnchor.constraint(equalTo: cupButton.centerXAnchor).isActive = true
        cupDetailsLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    func setupTankConstraints() {
        let tankSize: CGFloat = 250
        tank.translatesAutoresizingMaskIntoConstraints = false
        tank.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        tank.topAnchor.constraint(equalTo: cupDetailsLabel.bottomAnchor, constant: 30).isActive = true
        tank.heightAnchor.constraint(equalToConstant: tankSize).isActive = true
        tank.widthAnchor.constraint(equalToConstant: tankSize).isActive = true
    }
    
    func setupWaterConstraints() {
        water.translatesAutoresizingMaskIntoConstraints = false
        water.topAnchor.constraint(equalTo: tank.topAnchor, constant: 160).isActive = true
        water.leadingAnchor.constraint(equalTo: tank.leadingAnchor).isActive = true
        water.trailingAnchor.constraint(equalTo: tank.trailingAnchor).isActive = true
        water.bottomAnchor.constraint(equalTo: tank.bottomAnchor).isActive = true
    }
    
    func setupPercentageLabelConstraints() {
        percentageLabel.translatesAutoresizingMaskIntoConstraints = false
        percentageLabel.centerYAnchor.constraint(equalTo: tank.centerYAnchor).isActive = true
        percentageLabel.centerXAnchor.constraint(equalTo: tank.centerXAnchor).isActive = true
        percentageLabel.widthAnchor.constraint(equalTo: tank.widthAnchor).isActive = true
        percentageLabel.heightAnchor.constraint(equalTo: tank.heightAnchor).isActive = true
    }
    
}
