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
    var round: Int = 1
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    
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
        
        var points = 100 - difference
        
        score += points
        
        round += 1
        
        let title: String
        if difference == 0 {
            score += 100
            points += 100
            title = "Your bonus is 100 points!"
        } else if difference == 1 {
            score += 50
            points += 50
            title = "Your bonus is 50 points!"
        } else if difference < 5 {
            title = "You almost had it!"
        } else if difference < 10 {
            title = "Pretty Good!"
        } else {
            title = "Not even close..."
        }
        
        let message = "The value of the slider is now: \(currentValue)" + "\nThe target value is: \(targetValue)" + "\nThe diffenrece is: \(difference)" + "\nYou scored \(points) points "
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)

        let action = UIAlertAction(title: "OK", style: .default , handler: {
            action in
            self.startNewRound()
        })

        alert.addAction(action)

        present(alert, animated: true, completion: nil)
        
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
    }
    
    func updateLabels() {
        targetLabel.text = String(targetValue)
        scoreLabel.text = String(score)
        roundLabel.text = String(round)
    }
    
}


