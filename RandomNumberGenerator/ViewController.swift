//
//  ViewController.swift
//  RandomNumberGenerator
//
//  Created by star on 07.02.22.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - Outlets
    
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var chooseButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func chooseButtonTapped(_ sender: UIButton) {
        print("tapped")
    }
    
}

