//
//  ViewController.swift
//  ViduCode_3
//
//  Created by Subin on 19/10/2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.green
        setupUI()
    }
    
    private func setupUI(){
        let lblWelcome = UILabel(frame: .init(x: 50, y: 100, width: 200, height: 30))
        lblWelcome.text = "Welcome CODE"
        lblWelcome.font = UIFont.systemFont(ofSize: 20)
        lblWelcome.textColor = .black
        lblWelcome.backgroundColor = .white
        self.view.addSubview(lblWelcome)
        
        let lblSubtitle = UILabel(frame: .init(x: 50, y: 135, width: 300, height: 60))
        lblSubtitle.text = "Sign in Continue"
        lblSubtitle.font = UIFont.systemFont(ofSize: 25)
        lblSubtitle.textColor = .gray
        lblSubtitle.backgroundColor = .white
        self.view.addSubview(lblSubtitle)
        
        let tfUsername = UITextField(frame: .init(x: 50, y: 250, width: self.view.frame.width - 100, height: 50))
        tfUsername.placeholder = "Username"
        tfUsername.backgroundColor = .white
        self.view.addSubview(tfUsername)
        
        let underline = CALayer.init()
        underline.frame = .init(x: 0, y: tfUsername.frame.size.height - 1, width: tfUsername.frame.size.width, height: tfUsername.frame.size.height)
        underline.borderWidth = 1
        underline.borderColor = UIColor.lightGray.cgColor
        tfUsername.layer.addSublayer(underline)
        tfUsername.layer.masksToBounds=true
        
        let tfPass = UITextField(frame: .init(x: 50, y: 310, width: tfUsername.frame.size.width, height: 50))
        tfPass.placeholder = "Password"
        tfPass.isSecureTextEntry = true
        tfPass.backgroundColor = .white
        self.view.addSubview(tfPass)
        
        let underline2 = CALayer.init()
        underline2.frame = .init(x: 0, y: tfPass.frame.size.height - 1, width: tfPass.frame.size.width, height: tfPass.frame.size.height)
        underline2.borderWidth = 1
        underline2.borderColor = UIColor.lightGray.cgColor
        tfPass.layer.addSublayer(underline2)
        tfPass.layer.masksToBounds = true
        
        let btnWidth:CGFloat = 180.0
        let btn = UIButton.init(type: .system)
        btn.frame = .init(x: (self.view.frame.width - btnWidth)/2, y: 450, width: btnWidth, height: 50)
        btn.setTitle("Get Started", for: .normal)
        self.view.addSubview(btn)
        
        btn.setTitleColor(UIColor.black, for: .normal)
        btn.backgroundColor = .lightGray
        btn.layer.cornerRadius = 16
        
        btn.addTarget(self, action: #selector(self.onBtnClicked), for: .touchUpInside)
    }

    @objc func onBtnClicked(){
        let vc = ViewController2()
        self.present(vc, animated: true, completion: nil)
    }
}

