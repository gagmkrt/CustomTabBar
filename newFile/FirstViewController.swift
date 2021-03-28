//
//  FirstViewController.swift
//  newFile
//
//  Created by Gag Mkrtchyan on 28.03.21.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green
        
        setupButton()
    }
    
    private func setupButton() {
        let button = UIButton()
        button.backgroundColor = .red
        button.setTitle("Push", for: .normal)
        button.addTarget(self, action: #selector(pressed), for: .touchUpInside)
        view.addSubview(button)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
    }
    
    @objc func pressed() {
        let vc = SecondViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}
