//
//  ViewController.swift
//  ESL_Magic_Scrambler
//
//  Created by Kevin Smith on 9/26/19.
//  Copyright © 2019 Kevin Smith. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    let scrambler = ScrambleMachine()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print(scrambler.scrambleWordString(theStringSays: "Test Time"))
    }


}

