//
//  Builder.swift
//  MVP-Learning-1
//
//  Created by Bakhtovar Akhmedov on 12.04.2023.
//

import Foundation
import UIKit

protocol BuilderProtocol {
    static func createMainModule() -> UIViewController
    static var arrayOfPerson: [Person] { get }
    static var arrayOfFoto: [String] { get }
}

class MainBuilder: BuilderProtocol {
    static let arrayOfPerson = [Person(fullName: "many people", indexOfFoto: 0),
                         Person(fullName: "GrandDady", indexOfFoto: 1),
                         Person(fullName: "idk what it, but i installed", indexOfFoto: 2),
                         Person(fullName: "wow i maked this all", indexOfFoto: 3)
                        ]
    static let arrayOfFoto = [
                            "Crowd-of-Diverse-People_800x528.jpg",
                            "images-2.jpeg",
                            "images-3.jpeg",
                            "images.jpeg"
                            ]
    static func createMainModule() -> UIViewController {
        let model = Person(fullName: "ad", indexOfFoto: 1)
        let view = MainViewController()
        let presenter = MainPresenter(view: view, arrayOfPerson: arrayOfPerson, arrauOfFoto: arrayOfFoto)
        view.presenter = presenter
        return view
    }
}

