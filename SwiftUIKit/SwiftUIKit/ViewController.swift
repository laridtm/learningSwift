//
//  ViewController.swift
//  SwiftUIKit
//
//  Created by Larissa Diniz  on 26/12/19.
//  Copyright © 2019 Larissa Diniz . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showAlert(){
        let message = "The value of the slider is now: \(currentValue) "
        
        let alert = UIAlertController(title: "Hello World", message: message, preferredStyle: .alert)

        let action = UIAlertAction(title: "OK", style: .default , handler: nil)

        alert.addAction(action)

        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func sliderMoved(slider: UISlider){
        let roundedValue = slider.value.rounded()
        print("The rounded value of the slider is now: \(roundedValue) ")
        currentValue = Int(roundedValue)
    }
    
}

