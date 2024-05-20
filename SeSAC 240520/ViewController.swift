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
    
    @IBOutlet var labelLIst: [UILabel]! // 배열로 연결
    
    @IBOutlet var oneLabel: UILabel!
    @IBOutlet var twoLabel: UILabel!
    @IBOutlet var threeLabel: UILabel!
    
    
    var oneCount = 0
    var twoCount = 1
    var threeCount = 2
    
    
    var count = [0,0,0]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // labelName : 매개변수 (Parameter)
        // oneLabel, twoLabel, threeLabel : 전달인자(Argument) _ 데이터를 실어 보내는것 (전달데이터) (ex. red)
       // designLabelUI(labelName: oneLabel, thisIsTextColor: .red)
        //designLabelUI(labelName: twoLabel, thisIsTextColor: .blue)
        //designLabelUI(labelName: threeLabel, thisIsTextColor: .green)
        
      //  designButtonUI(oneButton, titleColor: .read, title: "234")
        
        // () 함수호출 연산자
        
    }
    
    
    // 1. 어떤 버튼을 클릭했는지 우찌 알죠?
    // -> currentTitle (optional 조심, 버전 조심)
    // -> tag
    // 2. 아웃렛 머 어떻게 못할까 => OutletCollection
    
    @IBAction func oneButtonClicked(_ sender: UIButton) {

        count[sender.tag] = count[sender.tag] + 1
        
        
        //Outlet Collection 활용한 것
        
        labelLIst[sender.tag] = count[sender.tag] + 1
        
        
        
        //print(sender.currentTitle)
        print(sender.tag)
        
        if sender.tag == 0 {
            count[sender.tag] = count[sender.tag] + 1
        } else if sender.tag == 1 {
            count[sender.tag] = count [sender.tag] +1
        } else {
            count[2] = count [2] + 1
        }
        
        count[sender.tag] = count[sender.tag] + 1
        
        
        print(count)
        
        oneLabel.text = "\(count[0])번 클릭"
        twoLabel.text = "\(count[1])번 클릭"
        threeLabel.text = "\(count[2])번 클릭"
        
        
        if sender.currentTitle! == "hyunbin" {
        // 왜 옵셔널인가? 글자 없이 이미지로만 이루어져 있을 수도 있기 때문
        oneLabel.text = "\(oneCount)번"
        oneCount = oneCount + 1
        
    } else {
        twoLabel.text = "\(twoCount)번"
        twoCount = twoCount + 1
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
        
        //button.setTitleColor(titleColor, for: .normal)
        //better.title(title, String)
        
        //threeButton.setTitleColor(.red, for: .normal)
        //threeButton.setTitle("클릭", for: .normal)
        
        
    }
        
        
        
    }



