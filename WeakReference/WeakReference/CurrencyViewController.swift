//
//  ViewController.swift
//  WeakReference
//
//  Created by Denis Nefedov on 14.02.2020.
//  Copyright © 2020 Den4ik's Team. All rights reserved.
//

import UIKit

class CurrencyViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var usdLabel: UILabel!
    @IBOutlet weak var currencyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func update(_ sender: Any) {
        print("reload")
    }
}

