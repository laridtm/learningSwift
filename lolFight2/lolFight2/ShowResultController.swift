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
        
        guard let image = imageName else {
            return
        }
        
        imageResult.image = UIImage(named: image)
        
        
        
    }
}
