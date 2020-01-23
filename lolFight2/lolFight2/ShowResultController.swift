//
//  ShowResultController.swift
//  lolFight2
//
//  Created by Larissa Diniz  on 23/01/20.
//  Copyright © 2020 Larissa Diniz . All rights reserved.
//

import UIKit

class ShowResultController: UIViewController {

    @IBOutlet weak var imageResult: UIImageView!
    
    var imageName: String?
    
   // let resultFight = ChooseController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageResult.image = UIImage(named: imageName!)
        
        
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
