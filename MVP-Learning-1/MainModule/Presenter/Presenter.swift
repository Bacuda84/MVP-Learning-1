//
//  Presenter.swift
//  MVP-Learning-1
//
//  Created by Bakhtovar Akhmedov on 12.04.2023.
//

import Foundation

protocol MainViewProtocol: class {
    func copy(info: Person)
}

protocol MainViewPresenterProtocol: class {
    init(view: MainViewProtocol, arrayOfPerson: [Person], arrauOfFoto: [String])
    func sendToCopy(info: Person)
}


class MainPresenter: MainViewPresenterProtocol {  //MARK: - for presenter -
    let view: MainViewProtocol!
    let arrayOfPoto: [String]!
    let arrayOfPeople: [Person]!
    
    func sendToCopy(info: Person) {
        view.copy(info: info)
    }
    
    required init(view: MainViewProtocol, arrayOfPerson: [Person], arrauOfFoto: [String]) {
        self.view = view
        self.arrayOfPoto = arrauOfFoto
        self.arrayOfPeople = arrayOfPerson
    }
}
