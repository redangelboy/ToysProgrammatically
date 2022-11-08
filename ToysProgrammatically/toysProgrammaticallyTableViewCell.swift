//
//  toysProgrammaticallyTableViewCell.swift
//  ToysProgrammatically
//
//  Created by Consultant on 11/7/22.
//

import UIKit

class toysProgrammaticallyTableViewCell: UITableViewCell {
    
    lazy var progImageView: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .white
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "1 gokultra")
        
        return imageView
    }()
    
    lazy var progTopLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
//        label.backgroundColor = .systemCyan
        label.numberOfLines = 0
        label.text = "Top"
        
        return label
        
    }()
    
    lazy var progMidLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
//        label.backgroundColor = .systemPurple
        label.numberOfLines = 0
        label.text = "Middle"
        label.textColor = .gray
        
        return label
        
    }()
    
    lazy var progBotSlider: UISlider = {
        let slider = UISlider(frame: .zero)
        slider.translatesAutoresizingMaskIntoConstraints = false
//        slider.backgroundColor = .systemYellow
//        slider.numberOfLines = 0

        
        return slider
        
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?){
            super.init(style: style, reuseIdentifier: reuseIdentifier)
        
            setUpUI()
        }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpUI(){
        
        self.contentView.backgroundColor = .systemGray6
        
        self.contentView.addSubview(self.progImageView)
        self.contentView.addSubview(self.progMidLabel)
        
        self.progImageView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 8).isActive = true
        self.progImageView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 8).isActive = true
        self.progImageView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -8).isActive = true
        self.progImageView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        self.progImageView.widthAnchor.constraint(equalToConstant: 150).isActive = true
        
        
        let stackView = UIStackView(frame: .zero)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 8
        stackView.distribution = .equalSpacing
        
        stackView.addArrangedSubview(self.progTopLabel)
        stackView.addArrangedSubview(self.progMidLabel)
        stackView.addArrangedSubview(self.progBotSlider)
        
        self.contentView.addSubview(stackView)
        stackView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 8).isActive = true
        stackView.leadingAnchor.constraint(equalTo: self.progImageView.trailingAnchor, constant: 8).isActive = true
        stackView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -8).isActive = true
        stackView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -8).isActive = true
        
        
//        self.progMidLabel.leadingAnchor.constraint(equalTo: self.progImageView.trailingAnchor, constant: 8).isActive = true
//        self.progMidLabel.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -8).isActive = true
//        self.progMidLabel.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor).isActive = true
        
        
        
        
    }
}

