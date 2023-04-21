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
    
    let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "profile")
        imageView.contentMode = .scaleAspectFit
        imageView.frame = CGRect(x: 70, y: 20, width: 170, height: 170)
        return imageView
    }()
    
//    let profileImageView: UIImageView = {
//        let imageView = UIImageView()
//        imageView.image = UIImage(named: "profile")
//        return imageView
//    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Eric Tam"
        return label
    }()
    
    let pronounLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "he/him/his"
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setProfileContainerView()
        setProfileImageView()
        setNameLabel()
        setPronounLabel()
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
    
    func setProfileImageView() {
        profileContainerView.addSubview(profileImageView)

//        NSLayoutConstraint.activate([
//            profileImageView.topAnchor.constraint(equalTo: profileContainerView.topAnchor, constant: 30),
//            profileImageView.leadingAnchor.constraint(equalTo: profileContainerView.leadingAnchor, constant: 30),
//            profileImageView.trailingAnchor.constraint(equalTo: profileContainerView.trailingAnchor, constant: -30),
//            profileImageView.bottomAnchor.constraint(equalTo: profileContainerView.bottomAnchor, constant: -30),
//        ])
    }
    
    func setNameLabel() {
        profileContainerView.addSubview(nameLabel)
        
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: profileContainerView.topAnchor, constant: 180),
            nameLabel.leadingAnchor.constraint(equalTo: profileContainerView.leadingAnchor, constant: 120),
            nameLabel.bottomAnchor.constraint(equalTo: profileContainerView.bottomAnchor, constant: -30)
        ])
    }
    
    func setPronounLabel() {
        profileContainerView.addSubview(pronounLabel)
        
        NSLayoutConstraint.activate([
            pronounLabel.topAnchor.constraint(equalTo: profileContainerView.topAnchor, constant: 190),
            pronounLabel.leadingAnchor.constraint(equalTo: profileContainerView.leadingAnchor, constant: 115),
            pronounLabel.bottomAnchor.constraint(equalTo: profileContainerView.bottomAnchor, constant: -5)
        ])
    }
}
