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
        view.backgroundColor = .cyan
        return view
    }()
    
    let locationSocialMediaView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .blue
        return view
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
            profileContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            profileContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            profileContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.3),
        ])
    }
}
