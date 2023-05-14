//
//  ViewController.swift
//  Counter
//
//  Created by Eduard Karimov on 14.05.2023.
//

import UIKit

class ViewController: UIViewController {
    var count: Int = 0
    var buttonTapPlus: Bool = false
    var buttonTapMinus: Bool = false
    @IBOutlet weak var incrementCounter: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        incrementCounter.text = "Значение счетчика: \(count)"
        
    }
    
    @IBAction func counterButtonPlus(_ sender: Any) {
        while buttonTapPlus == true {
        }
            count += 1
            print(count)
            incrementCounter.text = "Значение счетчика: \(count)"
    }
    
    @IBAction func counterButtonMinus(_ sender: Any) {
        while buttonTapMinus == true {
        }
            count -= 1
            print(count)
        if count >= 0 {
            incrementCounter.text = "Значение счетчика: \(count)"
        } else {
            count = 0
        }
    }
    }
