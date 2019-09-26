//
//  LoginViewController.swift
//  MVVM
//
//  Created by ArifRachman on 20/09/19.
//  Copyright © 2019 Telkom. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var headerLogin: HeaderComponent!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    override func updateViewConstraints() {
        textFieldConstraints()
        super.updateViewConstraints()
    }
    
    func setupUI() {
        view.addSubview(imageLogo)
        view.addSubview(textUsername)
        view.addSubview(textPassword)
        view.addSubview(buttonLogin)
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "Background")!)
    }
    
    
    let imageLogo: UIImageView = {
        let image = UIImageView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        image.image = UIImage(named: "Telkom")
        image.translatesAutoresizingMaskIntoConstraints = false
        
        return image
    }()
    
    let textUsername: UITextField = {
        let text = UITextField(frame: CGRect(x: 0, y: 0, width: 100, height: 30))
        
        text.textColor = .white
        text.translatesAutoresizingMaskIntoConstraints = false
        text.layer.borderWidth = 1.0
        text.layer.borderColor = UIColor.white.cgColor
        text.attributedPlaceholder = NSAttributedString(string: "Masukan Username", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        
        text.layer.cornerRadius =  5
        let leftView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 10.0, height: 2.0))
        text.leftView = leftView
        text.leftViewMode = .always
        return text
    }()
    
    let textPassword: UITextField = {
        let text = UITextField(frame: CGRect(x: 0, y: 0, width: 100, height: 30))
        
        text.textColor = .white
        text.translatesAutoresizingMaskIntoConstraints = false
        text.layer.borderWidth = 1.0
        text.layer.borderColor = UIColor.white.cgColor
        text.attributedPlaceholder = NSAttributedString(string: "Masukan Password", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        
        text.layer.cornerRadius =  5
        let leftView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 10.0, height: 2.0))
        text.leftView = leftView
        text.leftViewMode = .always
        text.isSecureTextEntry = true
        return text
    }()
    
    let buttonLogin: UIButton = {
        let buttonLogin = UIButton(type: .system)
        
        buttonLogin.backgroundColor = .red
        buttonLogin.setTitle("Login!", for: .normal)
        buttonLogin.setTitleColor(.white, for: .normal)
        buttonLogin.translatesAutoresizingMaskIntoConstraints = false
        buttonLogin.addTarget(self, action: #selector(actionBtnLogin), for: .touchUpInside)
        return buttonLogin
    }()
    
    func textFieldConstraints() {
        // Center imageLogo Relative to Page View
        NSLayoutConstraint(
            item: imageLogo,
            attribute: .centerX,
            relatedBy: .equal,
            toItem: view,
            attribute: .centerX,
            multiplier: 1.0,
            constant: 0)
            .isActive = true
        
        // Set imageLogo Width to be 60% of the Width of the Page View
        NSLayoutConstraint(
            item: imageLogo,
            attribute: .width,
            relatedBy: .equal,
            toItem: view,
            attribute: .width,
            multiplier: 0.6,
            constant: 0.0)
            .isActive = true
        
        // Set imageLogo Height to be 180point of the Width of the Page View
        NSLayoutConstraint(
            item: imageLogo,
            attribute: .height,
            relatedBy: .equal,
            toItem: view,
            attribute: .height,
            multiplier: 0.0,
            constant: 180)
            .isActive = true
        
        // Set imageLogo Y Position 10% / 70point Down From the Top of the Page View
        NSLayoutConstraint(
            item: imageLogo,
            attribute: .top,
            relatedBy: .equal,
            toItem: view,
            attribute: .bottom,
            multiplier: 0.1,
            constant: 70)
            .isActive = true
        
        // Center textUsername Relative to Page View
        NSLayoutConstraint(
            item: textUsername,
            attribute: .centerX,
            relatedBy: .equal,
            toItem: view,
            attribute: .centerX,
            multiplier: 1.0,
            constant: 0.0)
            .isActive = true
        
        // Set Text Field Width to be 80% of the Width of the Page View
        NSLayoutConstraint(
            item: textUsername,
            attribute: .width,
            relatedBy: .equal,
            toItem: view,
            attribute: .width,
            multiplier: 0.8,
            constant: 0.0)
            .isActive = true
        
        // Set textUsername Height to be 40point of the Width of the Page View
        NSLayoutConstraint(
            item: textUsername,
            attribute: .height,
            relatedBy: .equal,
            toItem: view,
            attribute: .height,
            multiplier: 0.0,
            constant: 40)
            .isActive = true
        
        // Set textUsername Y Position 10% / 300point Down From the Top of the Page View
        NSLayoutConstraint(
            item: textUsername,
            attribute: .top,
            relatedBy: .equal,
            toItem: view,
            attribute: .bottom,
            multiplier: 0.1,
            constant: 300)
            .isActive = true
        
        
        // Center textPassword Relative to Page View
        NSLayoutConstraint(
            item: textPassword,
            attribute: .centerX,
            relatedBy: .equal,
            toItem: view,
            attribute: .centerX,
            multiplier: 1.0,
            constant: 0.0)
            .isActive = true
        
        // Set textPassword Width to be 80% of the Width of the Page View
        NSLayoutConstraint(
            item: textPassword,
            attribute: .width,
            relatedBy: .equal,
            toItem: view,
            attribute: .width,
            multiplier: 0.8,
            constant: 0.0)
            .isActive = true
        
        // Set textPassword Height to be 40point of the Width of the Page View
        NSLayoutConstraint(
            item: textPassword,
            attribute: .height,
            relatedBy: .equal,
            toItem: view,
            attribute: .height,
            multiplier: 0.0,
            constant: 40)
            .isActive = true
        
        // Set textPassword Y Position 10% / 350point Down From the Top of the Page View
        NSLayoutConstraint(
            item: textPassword,
            attribute: .top,
            relatedBy: .equal,
            toItem: view,
            attribute: .bottom,
            multiplier: 0.1,
            constant: 350)
            .isActive = true
        
        
        // Center buttonLogin Relative to Page View
        NSLayoutConstraint(
            item: buttonLogin,
            attribute: .centerX,
            relatedBy: .equal,
            toItem: view,
            attribute: .centerX,
            multiplier: 1.0,
            constant: 0.0)
            .isActive = true
        
        // Set buttonLogin Width to be 80% of the Width of the Page View
        NSLayoutConstraint(
            item: buttonLogin,
            attribute: .width,
            relatedBy: .equal,
            toItem: view,
            attribute: .width,
            multiplier: 0.8,
            constant: 0.0)
            .isActive = true
        
        // Set buttonLogin Height to be 40point of the Width of the Page View
        NSLayoutConstraint(
            item: buttonLogin,
            attribute: .height,
            relatedBy: .equal,
            toItem: view,
            attribute: .height,
            multiplier: 0.0,
            constant: 40)
            .isActive = true
        
        // Set buttonLogin Y Position 90% Down From the Top of the Page View
        NSLayoutConstraint(
            item: buttonLogin,
            attribute: .bottom,
            relatedBy: .equal,
            toItem: view,
            attribute: .bottom,
            multiplier: 0.9,
            constant: 0.0)
            .isActive = true
    }
    
    @objc func actionBtnLogin(sender: UIButton) {
        headerLogin.LabelHeader.text = "Login"
        headerLogin.btnBackHeader.setImage(UIImage(named: "back"), for: .normal)
        
        print("Username: \(textUsername.text as Any), \(textPassword.text as Any)")
    }

}
