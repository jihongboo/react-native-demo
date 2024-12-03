//
//  ReactViewController.swift
//  TestApp
//
//  Created by 纪洪波 on 12/4/24.
//

import UIKit
import React_RCTAppDelegate

class ReactViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let factory = (UIApplication.shared.delegate as? RCTAppDelegate)?.rootViewFactory
    view = factory?.view(withModuleName: "TestApp")
  }
}
