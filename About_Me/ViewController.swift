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
        view.backgroundColor = .gray
        return view
    }()
    
    let likesView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .yellow
        return view
    }()
    
    let descriptionView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .purple
        return view
    }()
    
    let greetingButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Say Hi 👋", for: .normal)
        button.layer.cornerRadius = 20
        button.backgroundColor = .green
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setProfileContainerView()
        setlocationSocialMediaView()
        setLikesView()
        setDescriptionView()
        setGreetingButton()
    }
    
    func setProfileContainerView() {
        view.addSubview(profileContainerView)
        
        NSLayoutConstraint.activate([
            profileContainerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
            profileContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            profileContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            profileContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.25),
        ])
    }
    
    func setlocationSocialMediaView() {
        view.addSubview(locationSocialMediaView)
        
        NSLayoutConstraint.activate([
            locationSocialMediaView.topAnchor.constraint(equalTo: profileContainerView.bottomAnchor, constant: 20),
            locationSocialMediaView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            locationSocialMediaView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            locationSocialMediaView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.15),
        ])
    }
    
    func setLikesView() {
        view.addSubview(likesView)
        
        NSLayoutConstraint.activate([
            likesView.topAnchor.constraint(equalTo: locationSocialMediaView.bottomAnchor, constant: 20),
            likesView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            likesView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            likesView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.1),
        ])
    }
    
    func setDescriptionView() {
        view.addSubview(descriptionView)
        
        NSLayoutConstraint.activate([
            descriptionView.topAnchor.constraint(equalTo: likesView.bottomAnchor, constant: 20),
            descriptionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            descriptionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            descriptionView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.18),
        ])
    }
    
    func setGreetingButton() {
        view.addSubview(greetingButton)
        
        NSLayoutConstraint.activate([
            greetingButton.topAnchor.constraint(equalTo: descriptionView.bottomAnchor, constant: 20),
            greetingButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 80),
            greetingButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -80),
            greetingButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.07),
        ])
    }
}
