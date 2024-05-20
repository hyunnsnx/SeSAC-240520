//
//  ViewController.swift
//  SeSAC 240520
//
//  Created by 배현빈 on 5/20/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var oneButton: UIButton!
    @IBOutlet var twoButton: UIButton!
    @IBOutlet var threeButton: UIButton!
    
    
    @IBOutlet var oneLabel: UILabel!
    @IBOutlet var twoLabel: UILabel!
    @IBOutlet var threeLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // labelName : 매개변수 (Parameter)
        // oneLabel, twoLabel, threeLabel : 전달인자(Argument) _ 데이터를 실어 보내는것 (전달데이터) (ex. red)
        designLabelUI(labelName: oneLabel, thisIsTextColor: .red)
        designLabelUI(labelName: twoLabel, thisIsTextColor: .blue)
        designLabelUI(labelName: threeLabel, thisIsTextColor: .green)
        
        designButtonUI(oneButton, titleColor: .read, title: "234")
        
        // () 함수호출 연산자
        
    }
    
    @IBAction func oneButtonClicked(_ sender: UIButton) {
        oneLabel.text = "4567"
    }
    
    
    // 매개변수 (parameter)
    // 외부 매개변수 (Argument Label) (ex. thisIsTextColor)
    // 내부 매개변수 (Parameter Name) (ex. jack)
    // _ : 와일드카드식별자 (외부매개변수 자리에 사용, 밖에서 이름이 없어도 괜춘!)
    // 많이는 사용안하고 보통 함수에서 1개정도만 사용
    func designLabelUI (_ a : UILabel, thisIsTextColor jack : UIColor) {
            
        // 안에서 소통할 때는 a, 밖에서 소통할 때는 labelName
            a.text = "1"
            a.textColor = jack
            a.font = .boldSystemFont(ofSize: 30)
            a.textAlignment = .center
            
        
            
        }
        
    
    func designButtonUI (_ button : UIButton, titleColor better : UIColor, title: String) {
        
        button.setTitleColor(titleColor, for: .normal)
        better.title(title, String)
        
        //threeButton.setTitleColor(.red, for: .normal)
        //threeButton.setTitle("클릭", for: .normal)
        
        
    }
        
        
        
    }



