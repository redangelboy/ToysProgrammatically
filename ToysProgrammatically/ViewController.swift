//
//  ViewController.swift
//  ToysProgrammatically
//
//  Created by Consultant on 11/6/22.
//

import UIKit

class ViewController: UIViewController {
    
    var data: [String] = ["Goku Ultrainstinto", "Vegeta", "Broly", "Gohan","Piccolo", "Goku", "Bills", "Gogeta", "Goku Black", "Golden Freiza"]

  var dataInfo: [String] = ["Super Power", "Vegeta is the Saiyans Prince.", "Broly is stronger than Goku.", "Son Gohan 孫そん悟ご飯はん","A wise and cunning warrior, Piccolo Jr.", "Son Goku is the main protagonist of Dragon Ball.", "Beerus, the God of Destruction 破壊神ビルス.", "Gogeta (ゴジータ, Gojīta) is the Metamoran fusion of Goku and Vegeta.", "Goku Black ゴクウブラック, also known as Zamasu (ザマス, Zamasu).", "Golden Frieza ゴールデンフリーザ is the Ultimate Evolution of the Frieza Race."]

    var myImages: [String] = ["1 gokultra", "2 vegueta", "3 broly", "4 gohan","5 piccolo", "6 goku", "7 bills", "8 gogeta", "9 gokublack", "10 goldencell"]
    
    var tableView: UITableView?
    
    init(){
        super.init(nibName: nil, bundle: nil)
        self.setUpUI()
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.setUpUI()
    }
    
    private func setUpUI(){
        self.view.backgroundColor = .lightGray
        
        let table = UITableView(frame: .zero)
        table.translatesAutoresizingMaskIntoConstraints = false
        table.backgroundColor = .white
        table.dataSource = self
        table.delegate = self
        
//        register the cell
//        table.register(UITableViewCell.self, forCellReuseIdentifier: "SampleCell")
        table.register(toysProgrammaticallyTableViewCell.self, forCellReuseIdentifier: "ProgCell")
        
//        Add View to Hierarchy
        self.view.addSubview(table)
          
        //First way
        table.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
        table.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 8).isActive = true
        table.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -8).isActive = true
        table.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -8).isActive = true
          
        //Second way
//        self.view.trailingAnchor.constraint(equalTo: table.trailingAnchor, constant: 8).isActive = true
//        self.view.bottomAnchor.constraint(equalTo: table.bottomAnchor, constant: 8).isActive = true
          
        //Third way
//        let topConstraint = table.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 8)
//        let leadingConstraint = table.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 8)
//        let trailingConstraint = table.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -8)
//        let bottomConstraint = table.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -8)
//        NSLayoutConstraint.activate([topConstraint, leadingConstraint, trailingConstraint, bottomConstraint])
        
        
        self.tableView = table
        
    }
    


}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ProgCell", for: indexPath) as? toysProgrammaticallyTableViewCell else{
            fatalError("Whoops, something when wrong")
        }
//        cell.textLabel?.text = "\(indexPath)"
        cell.progImageView.image = UIImage(named: myImages[indexPath[1]])
        cell.progTopLabel.text = self.data[indexPath.row]
        cell.progMidLabel.text = self.dataInfo[indexPath.row]
//        cell.progBotLabel.text = self.data[indexPath.row]
        
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let placeholderVC = toysPlaceHolderViewController()
        self.navigationController?.pushViewController(placeholderVC, animated: true)
    }
    
}

