//
//  ViewController.swift
//  UpDownGame
//
//  Created by Sierra on 2023/02/06.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var numberLabel: UILabel!
    
    
    var computerNum: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        computerNum = Int.random(in: 1...10)
        mainLabel.text = "선택하세요"
        mainLabel.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        numberLabel.text = ""
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        guard let numString = sender.currentTitle else{return}
        numberLabel.text = numString
    }
    
    @IBAction func selectTapped(_ sender: UIButton) {
        guard let numString = numberLabel.text else{return}
        guard let numSelected = Int(numString) else{return}
        
        if computerNum > numSelected{
            mainLabel.text = "UP"
        }else if computerNum < numSelected{
            mainLabel.text = "DOWN"
        }else{
            mainLabel.text = "🎉BINGO🎉"
        }
        
    }
    
    
    
    @IBAction func resetTapped(_ sender: UIButton) {
        viewDidLoad()
    }
    
}

