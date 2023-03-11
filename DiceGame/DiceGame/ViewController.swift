//
//  ViewController.swift
//  DiceGame
//
//  Created by Sierra on 2023/02/05.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstImageView: UIImageView!
    
    
    @IBOutlet weak var secondImageView: UIImageView!
    
    let diceArray: [UIImage] = [#imageLiteral(resourceName: "black1"), #imageLiteral(resourceName: "black2"), #imageLiteral(resourceName: "black3"), #imageLiteral(resourceName: "black4"), #imageLiteral(resourceName: "black5"), #imageLiteral(resourceName: "black6")]
    
    @IBOutlet weak var sameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    
    @IBAction func rollButtonTapped(_ sender: UIButton) {
        firstImageView.image = diceArray.randomElement()
        secondImageView.image = diceArray.randomElement()
        if(firstImageView.image == secondImageView.image){
            sameLabel.text = "Lucky Dice!"
            sameLabel.textColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        }else{
            sameLabel.text = "RoLL!!"
        }
    }
    
    
    

}

