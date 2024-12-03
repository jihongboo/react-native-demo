//
//  ViewController.swift
//  TestApp
//
//  Created by 纪洪波 on 12/4/24.
//

import UIKit

class ViewController: UIViewController {
  let vc = ReactViewController()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    self.view.backgroundColor = .systemBackground
    
    let button = UIButton()
    button.setTitle("Open React Native", for: .normal)
    button.setTitleColor(.systemBlue, for: .normal)
    button.setTitleColor(.blue, for: .highlighted)
    button.addAction(UIAction { _ in
      self.present(self.vc, animated: true)
    }, for: .touchUpInside)
    self.view.addSubview(button)
    
    button.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      button.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
      button.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
      button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
      button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
    ])
  }
}
