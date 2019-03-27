//
//  ChooseImojiViewController.swift
//  FaceRun
//
//  Created by User on 26/03/2019.
//  Copyright © 2019 Brian Advent. All rights reserved.
//

import UIKit

class ChooseImojiViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    let themes: [String:[String]] = [
        "Sun": ["sunup","sundown","sunnormal"],
        "Animals": ["animalup","animaldown","animalnormal"],
        "Hands": ["handup","handDown","handnormal"],
        "Faces": ["Up","Down","Neutral"],
        "Persons" : ["personup","persondown","personnormal"]
    ]
    

    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let themeName = (sender as? UIButton)?.currentTitle, let theme = themes[themeName] {
            if let cvc = segue.destination as? GameViewController {
                GameViewController.logedIn = true
                cvc.playerImojis = theme
                
                //hold the mvc and dont make new one
            }
        }
        
    }
 

}
