//
//  ViewController.swift
//  SwiftUIKit
//
//  Created by Larissa Diniz  on 26/12/19.
//  Copyright © 2019 Larissa Diniz . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue: Int = 50
    var targetValue: Int = 0
    var score: Int = 0
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let roundedValue = slider.value.rounded()
        currentValue = Int(roundedValue)
        startNewRound()
    }
    
    @IBAction func showAlert(){
        var difference: Int
        if currentValue > targetValue {
            difference = currentValue - targetValue
        }else if targetValue > currentValue {
            difference = targetValue - currentValue
        }else {
            difference = 0
        }
        
        let points = 100 - difference
        
        score += points
        
        let message = "The value of the slider is now: \(currentValue)" + "\nThe target value is: \(targetValue)" + "\nThe diffenrece is: \(difference)" + "\nYou scored \(points) points "
        
        let alert = UIAlertController(title: "Hello World", message: message, preferredStyle: .alert)

        let action = UIAlertAction(title: "OK", style: .default , handler: nil)

        alert.addAction(action)

        present(alert, animated: true, completion: nil)
        
        startNewRound()
    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        let roundedValue = slider.value.rounded()
            currentValue = Int(roundedValue)
    }
    
    func startNewRound() {
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        slider.value = Float(currentValue)
        updateLabels()
        updateScore()
    }
    
    func updateLabels() {
        targetLabel.text = String(targetValue)
    }
    
    func updateScore() {
        scoreLabel.text = String(score)
    }
}


