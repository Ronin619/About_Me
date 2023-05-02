import UIKit

class ViewController: UIViewController {
    
    let profileContainerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(named: "profileBlue")
        return view
    }()
    
    let profileImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Eric Tam"
        label.textColor = .white
        label.font = UIFont(name: "Roboto-Bold", size: 24)
        return label
    }()
    
    let pronounLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "he/him/his"
        label.textColor = .white
        label.font = UIFont(name: "Roboto-Italic", size: 15)
        return label
    }()
    
    let locationSocialMediaView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(named: "sand")
        return view
    }()
    
    let dividerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .black
        return view
    }()
    
    let twitterImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let twitterLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "@RoninT619"
        label.font = UIFont(name: "Roboto-Regular", size: 15)
        return label
    }()
    
    let linkedinImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    let linkedinLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "linkedin.com/in/eytam"
        return label
    }()
    
    let locationLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "📍 Brooklyn, NY"
        label.font = UIFont(name: "Roboto-Bold", size: 15)
        return label
    }()
    
    let likesView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(named: "sand")
        return view
    }()
    
    let interestLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "❤️  Electric guitar, judo, traveling"
        return label
    }()
    
    let favoriteDishLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "🍴 Sushi"
        return label
    }()
    
    let favoriteShowLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "📺 The Simpsons"
        return label
    }()
    
    let descriptionView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(named: "sand")
        return view
    }()
    
    let descriptionHeaderLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "I like iOS Development because..."
        return label
    }()
    
    let descriptionBodyLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 10)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.text = "I wanted to focus on iOS development as I am more interested in mobile app development. I have owned an apple device for many years and use iOS apps exclusively. As most people carry a smart phone, it simply makes sense to focus on building mobile apps."
        return label
    }()
    
    let greetingButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Say Hi 👋", for: .normal)
        button.layer.cornerRadius = 20
        button.backgroundColor = UIColor(named: "redOrange")
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setProfileContainerView()
        setLocationSocialMediaView()
        setLikesView()
        setDescriptionView()
        setGreetingButton()
        setDescriptionHeaderLabel()
        setDescriptionBodyLabel()
        setInterestLabel()
        setFavoriteDishLabel()
        setFavoriteShowLabel()
        setLocationLabel()
        setDividerView()
        setTwitterImage()
        setTwitterLabel()
        setLinkedinImage()
        setLinkedinLabel()
        setProfileImageView()
        setNameLabel()
        setPronounLabel()
    }
    
    func setProfileContainerView() {
        view.addSubview(profileContainerView)
        
        NSLayoutConstraint.activate([
            profileContainerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
            profileContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            profileContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            profileContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.30),
        ])
    }
    
    func setProfileImageView() {
        profileContainerView.addSubview(profileImageView)
        
        profileImageView.image = UIImage(named: "profile")
        
        NSLayoutConstraint.activate([
            profileImageView.topAnchor.constraint(equalTo: profileContainerView.topAnchor, constant: 20),
            profileImageView.leadingAnchor.constraint(equalTo: profileContainerView.leadingAnchor, constant: 60),
            profileImageView.trailingAnchor.constraint(equalTo: profileContainerView.trailingAnchor, constant: -60),
            profileImageView.heightAnchor.constraint(equalTo: profileContainerView.heightAnchor, multiplier: 0.60),
        ])
    }
    
    func setNameLabel() {
        profileContainerView.addSubview(nameLabel)
        
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 5),
            nameLabel.leadingAnchor.constraint(equalTo: profileContainerView.leadingAnchor, constant: 100)
        ])
    }
    
    func setPronounLabel() {
        profileContainerView.addSubview(pronounLabel)
        
        NSLayoutConstraint.activate([
            pronounLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 5),
            pronounLabel.leadingAnchor.constraint(equalTo: profileContainerView.leadingAnchor, constant: 110)
        ])
    }
    
    func setLocationSocialMediaView() {
        view.addSubview(locationSocialMediaView)
        
        NSLayoutConstraint.activate([
            locationSocialMediaView.topAnchor.constraint(equalTo: profileContainerView.bottomAnchor, constant: 20),
            locationSocialMediaView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            locationSocialMediaView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            locationSocialMediaView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.15),
        ])
    }
    
    func setLocationLabel() {
        locationSocialMediaView.addSubview(locationLabel)
        
        NSLayoutConstraint.activate([
            locationLabel.topAnchor.constraint(equalTo: locationSocialMediaView.topAnchor, constant: 10),
            locationLabel.leadingAnchor.constraint(equalTo: locationSocialMediaView.leadingAnchor, constant: 20),
            locationLabel.trailingAnchor.constraint(equalTo: locationSocialMediaView.trailingAnchor, constant: -20),
        ])
    }
    
    func setTwitterImage() {
        locationSocialMediaView.addSubview(twitterImage)
        
        twitterImage.image = UIImage(named: "twitter")
        
        NSLayoutConstraint.activate([
            twitterImage.topAnchor.constraint(equalTo: dividerView.bottomAnchor, constant: 10),
            twitterImage.leadingAnchor.constraint(equalTo: locationSocialMediaView.leadingAnchor, constant: 20),
            twitterImage.trailingAnchor.constraint(equalTo: locationSocialMediaView.trailingAnchor, constant: -250),
            twitterImage.heightAnchor.constraint(equalTo: locationSocialMediaView.heightAnchor, multiplier: 0.2)
        ])
    }
    
    func setTwitterLabel() {
        locationSocialMediaView.addSubview(twitterLabel)
        
        NSLayoutConstraint.activate([
            twitterLabel.topAnchor.constraint(equalTo: dividerView.bottomAnchor, constant: 15),
            twitterLabel.leadingAnchor.constraint(equalTo: locationSocialMediaView.leadingAnchor, constant: 50),
            locationLabel.trailingAnchor.constraint(equalTo: locationSocialMediaView.trailingAnchor, constant: -20),
        ])
    }
    
    func setLinkedinImage() {
        locationSocialMediaView.addSubview(linkedinImage)
        
        linkedinImage.image = UIImage(named: "linkedin")
        
        NSLayoutConstraint.activate([
            linkedinImage.topAnchor.constraint(equalTo: twitterImage.bottomAnchor, constant: 10),
            linkedinImage.leadingAnchor.constraint(equalTo: locationSocialMediaView.leadingAnchor, constant: 20),
            linkedinImage.trailingAnchor.constraint(equalTo: locationSocialMediaView.trailingAnchor, constant: -250),
            linkedinImage.heightAnchor.constraint(equalTo: locationSocialMediaView.heightAnchor, multiplier: 0.2)
        ])
    }
    
    func setLinkedinLabel() {
        locationSocialMediaView.addSubview(linkedinLabel)
        
        NSLayoutConstraint.activate([
            linkedinLabel.topAnchor.constraint(equalTo: twitterLabel.bottomAnchor, constant: 15),
            linkedinLabel.leadingAnchor.constraint(equalTo: locationSocialMediaView.leadingAnchor, constant: 50),
            linkedinLabel.trailingAnchor.constraint(equalTo: locationSocialMediaView.trailingAnchor, constant: -20),
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
            descriptionView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.16),
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
    
    func setDescriptionHeaderLabel() {
        descriptionView.addSubview(descriptionHeaderLabel)
        
        NSLayoutConstraint.activate([
            descriptionHeaderLabel.topAnchor.constraint(equalTo: descriptionView.topAnchor, constant: 10),
            descriptionHeaderLabel.leadingAnchor.constraint(equalTo: descriptionView.leadingAnchor, constant: 20),
            descriptionHeaderLabel.trailingAnchor.constraint(equalTo: descriptionView.trailingAnchor, constant: -20),
        ])
    }
    
    func setDescriptionBodyLabel() {
        descriptionView.addSubview(descriptionBodyLabel)
        
        NSLayoutConstraint.activate([
            descriptionBodyLabel.topAnchor.constraint(equalTo: descriptionView.topAnchor, constant: 15),
            descriptionBodyLabel.leadingAnchor.constraint(equalTo: descriptionView.leadingAnchor, constant: 20),
            descriptionBodyLabel.trailingAnchor.constraint(equalTo: descriptionView.trailingAnchor, constant: -20),
            descriptionBodyLabel.bottomAnchor.constraint(equalTo: descriptionView.bottomAnchor, constant: -10)
        ])
    }
    
    func setInterestLabel() {
        likesView.addSubview(interestLabel)
        
        NSLayoutConstraint.activate([
            interestLabel.topAnchor.constraint(equalTo: likesView.topAnchor, constant: 5),
            interestLabel.leadingAnchor.constraint(equalTo: likesView.leadingAnchor, constant: 20),
            interestLabel.trailingAnchor.constraint(equalTo: likesView.trailingAnchor, constant: -20)
        ])
    }
    
    func setFavoriteDishLabel() {
        likesView.addSubview(favoriteDishLabel)
        
        NSLayoutConstraint.activate([
            favoriteDishLabel.topAnchor.constraint(equalTo: interestLabel.bottomAnchor, constant: 10),
            favoriteDishLabel.leadingAnchor.constraint(equalTo: likesView.leadingAnchor, constant: 20),
            favoriteDishLabel.bottomAnchor.constraint(equalTo: likesView.bottomAnchor, constant: -10)
        ])
    }
    
    func setFavoriteShowLabel() {
        likesView.addSubview(favoriteShowLabel)
        
        NSLayoutConstraint.activate([
            favoriteShowLabel.topAnchor.constraint(equalTo: interestLabel.bottomAnchor, constant: 10),
            favoriteShowLabel.leadingAnchor.constraint(equalTo: likesView.leadingAnchor, constant: 120),
            favoriteShowLabel.bottomAnchor.constraint(equalTo: likesView.bottomAnchor, constant: -10)
        ])
    }
    
    func setDividerView() {
        locationSocialMediaView.addSubview(dividerView)
        
        NSLayoutConstraint.activate([
            dividerView.topAnchor.constraint(equalTo: locationLabel.bottomAnchor, constant: 5),
            dividerView.leadingAnchor.constraint(equalTo: locationSocialMediaView.leadingAnchor),
            dividerView.trailingAnchor.constraint(equalTo: locationSocialMediaView.trailingAnchor),
            dividerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.001)
        ])
    }
}
