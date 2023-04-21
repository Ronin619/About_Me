//
//  ViewController.swift
//  About_Me
//
//  Created by Eric Tam on 4/20/23.
//

import UIKit

class ViewController: UIViewController {
    
    let profileContainerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 20
        view.backgroundColor = .darkGray
        return view
    }()
    
    let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "image")
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setProfileContainerView()
    }
    
    func setProfileContainerView() {
        view.addSubview(profileContainerView)
        
        NSLayoutConstraint.activate([
            profileContainerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
            profileContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            profileContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            profileContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.4),
        ])
    }
}

