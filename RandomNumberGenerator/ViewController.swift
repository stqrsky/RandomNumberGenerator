//
//  ViewController.swift
//  RandomNumberGenerator
//
//  Created by star on 07.02.22.
//

import UIKit

class ViewController: UIViewController {
    
    let numbers = [Array(1...100), Array(1...100)]
    
    var startNumber = 25
    var endNumber = 75

    //MARK: - Outlets
    
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var chooseButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        picker.delegate = self
        picker.dataSource = self
        
        picker.selectRow(startNumber - 1, inComponent: 0, animated: true)
        picker.selectRow(endNumber - 1, inComponent: 1, animated: true)
        
        chooseButton.layer.cornerRadius = 15
        chooseButton.setTitle("Choose number between \(startNumber) and \(endNumber)", for: .normal)
    }

    @IBAction func chooseButtonTapped(_ sender: UIButton) {
        print("tapped")
    }
    
}

extension ViewController: UIPickerViewDelegate {
    
}

extension ViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return numbers.count
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return numbers[0].count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(numbers[component][row])"
    }
    
    
}
