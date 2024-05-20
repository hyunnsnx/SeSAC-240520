//
//  OptionalViewController.swift
//  SeSAC 240520
//
//  Created by 배현빈 on 5/20/24.
//

import UIKit

class OptionalViewController: UIViewController {
    
    @IBOutlet var optextField: UITextField!
    
    @IBOutlet var opButton: UIButton!
    
    @IBAction func keyboardDis(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    @IBAction func keyboardDis2(_ sender: /*UIButton*/ Any) {
        view.endEditing(true)
    }
    
    // 보통 프로젝트 진행할 때는 sender를 명확하게 설정하는게 좋음, swift에서 구별할 수가 없기 때문
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
     
    }
    
// 1. 바탕 탭제스처
// 2. return
// 3. 버튼을 클릭했을 때
   
}
