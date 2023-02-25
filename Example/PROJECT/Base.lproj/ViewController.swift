//
//  ViewController.swift
//  
//
//  Created by Tes on 25/02/2023.
//

import UIKit
import WebViewLibrary

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        let vc = WebViewLibrary(link: "https://fb.com")
        /// Use any mode of presentation of your choice
        self.navigationController?.present(vc, animated: true)
    }
}
