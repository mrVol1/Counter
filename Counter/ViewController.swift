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
    var restartButtonTap: Bool = false
    let textLable: String = "Значение счетчика: "
    let textChangeHistory: String = "Значение: "
    let textChangeHistoryLessThanZero: String = "Попытка уменьшить значение счётчика ниже 0"
    let textRestart: String = "Значение сброшено"
    let dateFormatter = DateFormatter()
    var date: Date = Date()
    
    
    // Описание лейбла с текстом
    @IBOutlet weak var incrementCounter: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // отображается текущение значение счетчика
        incrementCounter.text = textLable + "\(count)"
    }
    
    // Кнопка увеличения count + 1
    @IBAction func counterButtonPlus(_ sender: Any) {
        while buttonTapPlus == true {
        }
            count += 1
            incrementCounter.text = textLable + "\(count)"
        
        dateFormatter.dateFormat = "MM/dd/yyyy, hh:mm"
        dateFormatter.timeZone = TimeZone.current
        let todaysDate = dateFormatter.string(from: date)
        
        changeHistory.insertText("\n" + todaysDate + "," + " " + textChangeHistory + " " + "\(count)")
    }
    
    // Кнопка уменьшения count - 1
    @IBAction func counterButtonMinus(_ sender: Any) {
        dateFormatter.dateFormat = "MM/dd/yyyy, hh:mm"
        dateFormatter.timeZone = TimeZone.current
        let todaysDate = dateFormatter.string(from: date)
        
        while buttonTapMinus == true {
        }
            count -= 1
        if count >= 0 {
            incrementCounter.text = textLable + "\(count)"
            changeHistory.insertText("\n" + todaysDate + "," + " " + textChangeHistory + " " + "\(count)")
        } else {
            count = 0
            changeHistory.insertText("\n" + todaysDate + "," + " " + textChangeHistoryLessThanZero)
        }
    }
    
    // Кнопка сброса
    @IBAction func restartButton(_ sender: Any) {
        while restartButtonTap == true {
        }
        count = 0
        incrementCounter.text = textLable + "\(count)"
        
        dateFormatter.dateFormat = "MM/dd/yyyy, hh:mm"
        dateFormatter.timeZone = TimeZone.current
        let todaysDate = dateFormatter.string(from: date)
        
        changeHistory.insertText("\n" + todaysDate + "," + " " + textRestart)
    }
        // TextView на экране
    @IBOutlet weak var changeHistory: UITextView!
}
