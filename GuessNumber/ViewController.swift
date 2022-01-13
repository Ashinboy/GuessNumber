//
//  ViewController.swift
//  GuessNumber
//
//  Created by Ashin Wang on 2022/1/13.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultText: UILabel!
    @IBOutlet weak var guessWrongText: UILabel!
    
    @IBOutlet weak var guessNumberTextField: UITextField!
    
    var guessWrongtimes:Int = 0
    var guessNumber = Int.random(in: 0...100)
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func playButton(_ sender: UIButton) {
        
        
        //關鍵轉換句
        
        
        let guessText = guessNumberTextField.text!
        let guessNumberText = Int(guessText)
        if guessNumberText != nil{
            let number = guessNumberText!
            if number == guessNumber{
                resultText.text = "你真是神!!!"
                view.endEditing(true)

                print("猜對了!")
            }else if number < guessNumber{
                resultText.text = "太小了哦"
                guessWrongtimes += 1
                guessWrongText.text = "失敗\(guessWrongtimes)次"
                guessNumberTextField.text = ""
                
            }else {
                resultText.text = "太大了啦!"
                guessWrongtimes += 1
                guessWrongText.text = "失敗 \(guessWrongtimes) 次"
                guessNumberTextField.text = ""
            }
            
            if guessWrongtimes == 6 {
                resultText.text = "Game Over"
                guessWrongtimes = 0
                guessWrongText.text = "失敗 \(guessWrongtimes) 次"
                view.endEditing(true)

            }
            
            
        }
      
        
        
        
       
        
    }
    @IBAction func rePlayBtn(_ sender: UIButton) {
        
        guessNumber = Int.random(in: 0...100)
        guessNumberTextField.text = ""
        resultText.text = "重新來囉!!"
        guessWrongtimes = 0
        guessWrongText.text = "失敗 \(guessWrongtimes) 次"
        view.endEditing(true)
    }
    
}

