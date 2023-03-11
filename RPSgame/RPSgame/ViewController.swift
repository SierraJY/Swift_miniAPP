//
//  ViewController.swift
//  RPSgame
//
//  Created by Sierra on 2023/02/05.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    
    
    @IBOutlet weak var computerImgView: UIImageView!
    
    @IBOutlet weak var userImgView: UIImageView!
    
    
    @IBOutlet weak var computerChoiceLabel: UILabel!
    
    @IBOutlet weak var userChoiceLabel: UILabel!
    
    @IBOutlet var viewBackground: UIView!
    
    var computerChoice: RPS = RPS.rock
    var userChoice: RPS = RPS.rock
    
    //앱의 화면에 들어오면 처음 실행되는 함수
    override func viewDidLoad() {
        super.viewDidLoad()
        mainLabel.text = "Please Select"
        viewBackground.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        //1. 첫번째/두번쨰 이미지뷰에 준비(묵) 이미지를 띄워야 함
        computerImgView.image = #imageLiteral(resourceName: "ready")
        userImgView.image = UIImage(named: "ready.png")
        
        //2. 첫번쨰/두번째 레이블에 준비할고 문자열을 띄워야함
        computerChoiceLabel.text = "Ready!"
        userChoiceLabel.text = "Ready!"
    }

    @IBAction func rpsButtonTapped(_ sender: UIButton) {
        //무엇을 선택했는지 정보 저장
        guard let title = sender.currentTitle else{return}
        
        switch title{
        case "가위":
            userChoice = RPS.scissor
        case "바위":
            userChoice = RPS.rock
        case "보":
            userChoice = RPS.paper
        default: //문자열이기 때문에 모든 문자열을 커버하는게 아님
            break
        }
        
        computerChoice = RPS(rawValue: Int.random(in: 0...2))!
    
    }

    @IBAction func selectedButtonTapped(_ sender: UIButton) {
        //컴퓨터가 랜덤 선택한 것을 이미지뷰에 표시
        //컴퓨터가 랜덤 선택한 것을 레이블에 표시
        switch computerChoice{
        case .scissor:
            computerImgView.image = UIImage(named: "scissors.png")
            computerChoiceLabel.text = "Scissors"
        case .rock:
            computerImgView.image = UIImage(named: "rock.png")
            computerChoiceLabel.text = "Rock"
        case .paper:
            computerImgView.image = UIImage(named: "paper.png")
            computerChoiceLabel.text = "Paper"
        }
        //내가 선택한 것을 이미지뷰에 표시
        //내가 선택한 것을 레이블에 표시
        switch userChoice{
        case .scissor:
            userImgView.image = UIImage(named: "scissors.png")
            userChoiceLabel.text = "Scissors"
        case .rock:
            userImgView.image = UIImage(named: "rock.png")
            userChoiceLabel.text = "Rock"
        case .paper:
            userImgView.image = UIImage(named: "paper.png")
            userChoiceLabel.text = "Paper"
        }
        //선택된 정보를 컴퓨터가 선택한 정보와 비교해서 승패판단
        if(computerChoice == userChoice){
            mainLabel.text = "DRAW"
        }else{
            if (computerChoice == .rock && userChoice == .paper) || (computerChoice == .paper && userChoice == .scissor) || (computerChoice == .scissor && userChoice == .rock){
                mainLabel.text = "🎉WIN🎉"
                viewBackground.backgroundColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
            }
            else{
                mainLabel.text = "LOSE"
                viewBackground.backgroundColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
            }
        }
    }
    
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        //모든 걸 모두 준비단계로 초기화
//        computerImgView.image = #imageLiteral(resourceName: "ready")
//        userImgView.image = UIImage(named: "ready.png")
//        computerChoiceLabel.text = "Ready!"
//        userChoiceLabel.text = "Ready!"
//
//
        viewDidLoad()
    }
    
}

