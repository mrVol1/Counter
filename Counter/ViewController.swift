//
//  ViewController.swift
//  Counter
//
//  Created by Eduard Karimov on 14.05.2023.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {
    var count: Int = 0
    var buttonTapPlus: Bool = false
    var buttonTapMinus: Bool = false
    var restartButtonTap: Bool = false
    let textLable: String = "Значение счетчика: "
    let dateFormatter = DateFormatter()
    var date: Date = Date()
    
    @IBOutlet weak var incrementCounter: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        incrementCounter.text = textLable + "\(count)"
        let tapGesture = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tapGesture)
        tapGesture.cancelsTouchesInView = false
    }
    
    
    
    @IBAction func counterButtonPlus(_ sender: Any) {
        while buttonTapPlus == true {
        }
            count += 1
            print(count)
            incrementCounter.text = textLable + "\(count)"
        
        dateFormatter.dateFormat = "MM/dd/yyyy, hh:mm"
        dateFormatter.timeZone = TimeZone.current
        let todaysDate = dateFormatter.string(from: date)
        print(todaysDate)
        
        changeHistory.text = "История изменений"
        
        changeHistory.insertText("\n" + todaysDate + "," + " " + "Значение:" + " " + "\(count)")
    }
    
    @IBAction func counterButtonMinus(_ sender: Any) {
        while buttonTapMinus == true {
        }
            count -= 1
            print(count)
        if count >= 0 {
            incrementCounter.text = textLable + "\(count)"
        } else {
            count = 0
        }
    }
    
    @IBAction func restartButton(_ sender: Any) {
        while restartButtonTap == true {
        }
        count = 0
        incrementCounter.text = textLable + "\(count)"
    }
        
    @IBOutlet weak var changeHistory: UITextView!
}
