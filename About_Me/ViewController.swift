//
//  ViewController.swift
//  About_Me
//
//  Created by Eric Tam on 4/20/23.
//

import UIKit

class ViewController: UIViewController {
    
    let imageContainerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 20
        view.backgroundColor = .cyan
        return view
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setImageContainerView()
    }
    
    func setImageContainerView() {
        view.addSubview(imageContainerView)
        
        NSLayoutConstraint.activate([
            imageContainerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
            imageContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            imageContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            imageContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.4),
        ])
    }
}

