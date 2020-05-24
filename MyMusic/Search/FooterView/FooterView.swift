//
//  FooterView.swift
//  MyMusic
//
//  Created by Оксана Котілевська on 16.05.2020.
//  Copyright © 2020 none. All rights reserved.
//

import UIKit

class FooterView: UIView {
    
    private var myLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 15)
        label.textAlignment = .center
        //        настройка констрентов через код
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = #colorLiteral(red: 0.631372549, green: 0.6470588235, blue: 0.662745098, alpha: 1)
        return label
    }()
    
    private var loader: UIActivityIndicatorView = {
        let loader = UIActivityIndicatorView()
        loader.translatesAutoresizingMaskIntoConstraints = false
        loader.hidesWhenStopped = true
        return loader
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupElements()
    }
    
    private func setupElements() {
        addSubview(myLabel)
        addSubview(loader)
//        закрепляем констрейнтами к чему и какое расстояние
        loader.topAnchor.constraint(equalTo: topAnchor, constant: 8).isActive = true
//        лево
        loader.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
//        право
        loader.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
//       по центру как центр для VIEW
        myLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
//        нижняя граница loader
        myLabel.topAnchor.constraint(equalTo: loader.bottomAnchor, constant: 8).isActive = true
    }
    
    func showLoader() {
        loader.startAnimating()
        myLabel.text = "Loading"
    }
    func hideLoader() {
        loader.stopAnimating()
        myLabel.text = ""
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
