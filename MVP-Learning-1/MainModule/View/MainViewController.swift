//
//  ViewController.swift
//  MVP-Learning-1
//
//  Created by Bakhtovar Akhmedov on 12.04.2023.
//


//MVC
//MVP

import UIKit

class MainViewController: UIViewController, MainViewProtocol{
    func copy(info: Person) {
        print("Copy")
    }
    @IBOutlet weak var tableView: UITableView!
    var presenter: MainPresenter!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        view.backgroundColor = .white
    }
}
extension MainViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
    //cell.label
    let label = UILabel()
    let imageView = UIImageView()
    label.text = presenter.arrayOfPeople[indexPath.row].fullName
    label.frame = CGRect(x: 0, y: 310, width: 400, height: 30)
    label.textAlignment = .center
            
    //cell.imageView
    imageView.image = UIImage(named: presenter.arrayOfPoto[indexPath.row])
    imageView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 310)
    imageView.contentMode = .scaleAspectFit
    //adding-to-view
    cell.addSubview(label)
    cell.addSubview(imageView)
    return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.arrayOfPoto.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 340
    }
}
