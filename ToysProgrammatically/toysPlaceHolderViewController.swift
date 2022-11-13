//
//  toysPlaceHolderViewController.swift
//  ToysProgrammatically
//
//  Created by Consultant on 11/7/22.
//

import UIKit


    class toysPlaceHolderViewController: UIViewController {
        
        var toReciveImageName : String?
        
        lazy var progImageView: UIImageView = {
            let imageView = UIImageView(frame: .zero)
            imageView.translatesAutoresizingMaskIntoConstraints = false
            imageView.backgroundColor = .white
            imageView.contentMode = .scaleAspectFit
//            imageView.image = UIImage(named:  "1 gokultra?")
            return imageView
            
        }()
        
        lazy var infoLabel: UILabel = {
            
            let label = UILabel(frame: .zero)
            label.translatesAutoresizingMaskIntoConstraints = false
            label.backgroundColor = .white
            label.numberOfLines = 0
            label.text = "DB"
            label.textAlignment = .center
            return label
        }()
        
        var nameString: String = ""
        override func viewDidLoad() {
            super.viewDidLoad()
            
        }
        
        
        init() {
            super.init(nibName: nil, bundle: nil)
            self.createTheView()
            
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        func createTheView (){
            self.view.backgroundColor = .white
            self.title = "Details"
            
            let table2 = UITableView(frame : .zero)
            table2.translatesAutoresizingMaskIntoConstraints = false
            table2.backgroundColor = .white
            
            self.view.addSubview(table2)
            
            table2.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
            table2.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 8).isActive = true
            table2.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -8).isActive = true
            table2.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -8).isActive = true
            
            table2.addSubview(self.infoLabel)
            table2.addSubview(self.progImageView)
            
            infoLabel.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 8).isActive = true
            infoLabel.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -8).isActive = true
            infoLabel.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -8).isActive = true
            
            progImageView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
            progImageView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 8).isActive = true
            progImageView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -8).isActive = true
            progImageView.bottomAnchor.constraint(equalTo: self.infoLabel.safeAreaLayoutGuide.topAnchor, constant: -1).isActive = true
//            progImageView.heightAnchor.constraint(equalToConstant: 600).isActive = true
//            progImageView.widthAnchor.constraint(equalToConstant: 300).isActive = true

            self.progImageView.image=UIImage(named:  "1 gokultra?")
        }

    }
