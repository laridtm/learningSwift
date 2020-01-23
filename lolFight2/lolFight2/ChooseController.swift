//
//  ChooseController.swift
//  lolFight2
//
//  Created by Larissa Diniz  on 22/01/20.
//  Copyright © 2020 Larissa Diniz . All rights reserved.
//

import UIKit

class ChooseController: UIViewController {

    @IBOutlet weak var champion1Image: UIImageView!
    @IBOutlet weak var champion2Image: UIImageView!
    
    var champion1Winner : Bool = true
    
    let lux = Mage(name: "Lux", life: 100, kills: 0, deaths: 0)
    let garen = Tank(name: "Garen", life: 100, kills: 0, deaths: 0)
    let missFortune = Shooter(name: "Miss Fortune", life: 100, kills: 0, deaths: 0)
    let taric = Support(name: "Taric", life: 100, kills: 0, deaths: 0)
    
    @IBAction func Lux(_ sender: UIButton) {
        champion1Image.image = UIImage(named: "lux3")
    }
    
    @IBAction func Taric(_ sender: UIButton) {
        champion1Image.image = UIImage(named: "taric")
    }
    
    @IBAction func Garen(_ sender: UIButton) {
        champion1Image.image = UIImage(named: "garen4")
    }
    
    @IBAction func Missfortune(_ sender: UIButton) {
        champion1Image.image = UIImage(named: "missFortune2")
    }
    
    @IBAction func Attack(_ sender: UIButton) {
        let fight1 = Fight.init(champion1: lux, champion2: garen)
        champion1Winner = fight1.fight()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowResultSegue" {
        
            let result = segue.destination as! ShowResultController
            if champion1Winner {
                result.imageName = "vitoria"
            } else {
                result.imageName = "derrota"
            }
        }
    }
    
//    func prepare(for segue: "ShowResultSegue", sender: Any?) {
//        let result = segue.destination as? ShowResultController
//    }
//
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let random = Int.random(in: 0...3)
        
        if random == 0 {
            champion2Image.image = UIImage(named: "lux3")
        } else if random == 1 {
            champion2Image.image = UIImage(named: "taric")
        } else if random == 2 {
            champion2Image.image = UIImage(named: "garen4")
        } else if random == 3 {
            champion2Image.image = UIImage(named: "missFortune2")
        }
             
          
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
