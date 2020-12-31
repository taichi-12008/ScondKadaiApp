//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by 今岡大智 on 2020/12/30.
//  Copyright © 2020 taichi.imaoka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    StoryboardのUI部品と変数を関連付け
    @IBOutlet weak var textFiled: UITextField!
    
    var textFiledString:String! = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        //他の画面からsegueを使って戻ってきた時の処理
    }
    
    @IBAction func button(_ sender: Any) {
        //遷移ボタンを押した時の処理
        textFiledString = textFiled.text!
    }
    
    
//    遷移するときに呼ばれるprepareメソッドを追加
//    遷移するときに行う処理をこの中に記載する
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のResultViewControllerを取得する
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        
        resultViewController.x = textFiledString
        
    }


}

