//
//  ViewController.swift
//  Counter
//
//  Created by Eduard Karimov on 14.05.2023.
//

import UIKit

class ViewController: UIViewController {
    var count: Int = 0
    var buttonTap: Bool = false
    @IBOutlet weak var incrementCounter: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        incrementCounter.text = "Значение счетчика: \(count)"
        
    }
    
    @IBAction func counterButton(_ sender: Any) {
        while buttonTap == true {
        }
            count += 1
            print(count)
            incrementCounter.text = "Значение счетчика: \(count)"
    }
    
}
