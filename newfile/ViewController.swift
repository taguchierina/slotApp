//
//  ViewController.swift
//  newfile
//
//  Created by 田口絵理奈 on 2018/09/10.
//  Copyright © 2018年 田口絵理奈. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cTabBar: UITabBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //スイカの子役カウンター
    @IBOutlet weak var sgoukei: UILabel!

    @IBAction func spuramai(_ sender: UIStepper) {
        let num = Int(sender.value)
        sgoukei.text = String(num)
    }

    //チェリーの子役カウンター
    @IBOutlet var tgoukei: UILabel!

    @IBAction func tpuramai(_ sender: UIStepper) {
        let num1 = Int(sender.value)
        tgoukei.text = String(num1)
    }
    
    //ベルの子役カウンター
    @IBOutlet var bgoukei: UILabel!
    @IBAction func bpuramai(_ sender: UIStepper) {
        let num2 = Int(sender.value)
        bgoukei.text = String(num2)
    }
    
    //チャンス目Aの子役カウンター
    @IBOutlet var tAgoukei: UILabel!
    @IBAction func tApuramai(_ sender: UIStepper) {
        let num3 = Int(sender.value)
        tAgoukei.text = String(num3)
    }
    
    //チャンス目Bの子役カウンター
    @IBOutlet var tBgoukei: UILabel!
    @IBAction func tBpuramai(_ sender: UIStepper) {
        let num4 = Int(sender.value)
        tBgoukei.text = String(num4)
    }
    
}




















