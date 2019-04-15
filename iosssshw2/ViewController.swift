//
//  ViewController.swift
//  iosssshw2
//
//  Created by User18 on 2019/4/15.
//  Copyright © 2019 User18. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
        self.view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBOutlet weak var eatDrinkSeg: UISegmentedControl!
    @IBOutlet weak var costTextField: UITextField!
    @IBOutlet weak var spicySwitch: UISwitch!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var ansImg: UIImageView!
    @IBOutlet weak var ansLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    var scoreValue:Int = 1
    @IBAction func scoreSlider(_ sender: UISlider) {
        scoreLabel.isHidden = false
        scoreValue = Int(sender.value)
        scoreLabel.text = String(scoreValue)
    }
    
    @IBAction func showDate(_ sender: UIDatePicker) {
        super.viewDidLoad()
        _ = datePicker
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy/MM/dd"
        let age = dateFormatter.string(from: sender.date)
        dateLabel.isHidden = false
        dateLabel.text = age
    }
    
    
    @IBAction func sendButton(_ sender: AnyObject) {
        ansLabel.isHidden = false
        let costNumber = Int(costTextField.text!)
        
        if eatDrinkSeg.selectedSegmentIndex == 0 {
            if costNumber! < 100 && costNumber! >= 0 {
                if spicySwitch.isOn == true{
                    if scoreValue < 5 {
                        let ranChoose = Int.random(in: 0...1)
                        if ranChoose == 0{
                            ansImg.image = UIImage(named: "辣椒")
                            ansLabel.text = "辣椒"
                        }
                        else{
                            ansImg.image = UIImage(named: "大蒜")
                            ansLabel.text = "大蒜"
                        }
                    }
                    else{
                        let ranChoose = Int.random(in: 0...1)
                        if ranChoose == 0{
                            ansImg.image = UIImage(named: "泡菜")
                            ansLabel.text = "泡菜"
                        }
                        else{
                            ansImg.image = UIImage(named: "石鍋拌飯")
                            ansLabel.text = "石鍋拌飯"
                        }
                    }
                }
                else{
                    if scoreValue > 4 {
                        let ranChoose = Int.random(in: 0...1)
                        if ranChoose == 0{
                            ansImg.image = UIImage(named: "雞腿便當")
                            ansLabel.text = "雞腿便當"
                        }
                        else{
                            ansImg.image = UIImage(named: "排骨便當")
                            ansLabel.text = "排骨便當"
                        }
                    }
                    else{
                        ansImg.image = UIImage(named: "20元麵店")
                        ansLabel.text = "20元麵店"
                    }
                
                }
            }
            else if costNumber! >= 100 && costNumber! < 500 {
                if spicySwitch.isOn == true{
                    if scoreValue < 5 {
                        let ranChoose = Int.random(in: 0...1)
                        if ranChoose == 0{
                            ansImg.image = UIImage(named: "滿大碗")
                            ansLabel.text = "滿大碗"
                        }
                        else{
                            ansImg.image = UIImage(named: "拿坡里")
                            ansLabel.text = "拿坡里"
                        }
                    }
                    else{
                        let ranChoose = Int.random(in: 0...1)
                        if ranChoose == 0{
                            ansImg.image = UIImage(named: "麻辣鍋")
                            ansLabel.text = "麻辣鍋"
                        }
                        else{
                            ansImg.image = UIImage(named: "辣味披薩")
                            ansLabel.text = "辣味披薩"
                        }
                    }
                }
                else{
                    if scoreValue > 4{
                        let ranChoose = Int.random(in: 0...1)
                        if ranChoose == 0{
                            ansImg.image = UIImage(named: "魯山人")
                            ansLabel.text = "魯山人"
                        }
                        else{
                            ansImg.image = UIImage(named: "胡弄")
                            ansLabel.text = "胡弄"
                        }
                    }
                    else{
                        let ranChoose = Int.random(in: 0...1)
                        if ranChoose == 0{
                            ansImg.image = UIImage(named: "達美樂")
                            ansLabel.text = "達美樂"
                        }
                        else{
                            ansImg.image = UIImage(named: "麥當勞")
                            ansLabel.text = "麥當勞"
                        }
                    }
                }
            }              
            else{
                ansImg.image = UIImage(named: "rich")
                ansLabel.text = "土豪是你！把整街包下來吧！"
            }
        }
        else if eatDrinkSeg.selectedSegmentIndex == 1{
            if costNumber! > 0 && costNumber! < 80{
                if spicySwitch.isOn == true{
                    ansImg.image = UIImage(named: "what")
                    ansLabel.text = "要這麼重口味喔..."
                }
                else{
                    if scoreValue < 5 {
                        let ranChoose = Int.random(in: 0...1)
                        if ranChoose == 0{
                            ansImg.image = UIImage(named: "胡蘿蔔汁")
                            ansLabel.text = "胡蘿蔔汁"
                        }
                        else{
                            ansImg.image = UIImage(named: "糖漿水")
                            ansLabel.text = "糖漿水"
                        }
                    }
                    else{
                        let ranChoose = Int.random(in: 0...1)
                        if ranChoose == 0{
                            ansImg.image = UIImage(named: "芋頭牛奶")
                            ansLabel.text = "芋頭牛奶"
                        }
                        else{
                            ansImg.image = UIImage(named: "木瓜牛奶")
                            ansLabel.text = "木瓜牛奶"
                        }
                    }
                }
            }
            else{
                ansImg.image = UIImage(named: "rich")
                ansLabel.text = "土豪是你！把整街包下來吧！"
            }
        }
    }
}
