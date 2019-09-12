//
//  ViewController.swift
//  The Awesome Ones
//
//  Created by Jessica Peterson on 9/5/19.
//  Copyright © 2019 Jessica Peterson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewer: UIImageView!
    @IBOutlet weak var label: UILabel! //names
    
    var index = -1
    var newIndex = -1
    var randomStart = Int.random(in: 0...8)
    
    var people = ["Ethan",
                  "Braden",
                  "Kyle",
                  "Reece",
                  "Max",
                  "Jessica",
                  "Sophia",
                  "Jared"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Button(_ sender: UIButton) {
    
    
        if randomStart > people.count - 1 {
            randomStart = 0
        }
        label.text = people[randomStart]
        viewer.image = UIImage(named: "\(randomStart)")
        randomStart += 1
    }
    
}

