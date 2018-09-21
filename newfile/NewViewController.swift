//
//  NewViewController.swift
//  newfile
//
//  Created by 田口絵理奈 on 2018/09/11.
//  Copyright © 2018年 田口絵理奈. All rights reserved.
//

import UIKit

//ピッカービューの宣言追加
class NewViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    //ラベルのプロパティ宣言
    @IBOutlet weak var tenpomei: UILabel!
    //ピッカービューのプロパティ宣言
    @IBOutlet weak var myPickerView: UIPickerView!
    //店舗の一覧表のプロパティ宣言
    @IBOutlet weak var itiranhyou: UILabel!
    //コンポートネントに表示する項目名
    let compos = ["神戸","西宮・尼崎・宝塚","明石・加古川・高砂","姫路・たつの","三田・丹波","豊岡・朝来"]
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(
        _ pickerView: UIPickerView,
        numberOfRowsInComponent component: Int
        ) -> Int {
        return compos.count
    }
    
    func pickerView(
        _ pickerView: UIPickerView,
        titleForRow row: Int,
        forComponent component: Int
        ) -> String? {
            return compos[row]
    }
    
    func pickerView(
        _ pickerView: UIPickerView,
        didSelectRow row: Int,
        inComponent component: Int
    ){
        
        
        tenpomei.text = compos[row]
        if compos[row] == compos[0] {
            print("hyougo")
            itiranhyou.text = "神戸市の店舗です\n" +
            "天一" +
            "bbb\n"
        } else if compos[row] == compos[1] {
            print("osaka")
            itiranhyou.text = "西宮市の店舗です"
        } else if compos[row] == compos[2] {
            print("kyoto")
            itiranhyou.text = "明石市の店舗です"
        } else if compos[row] == compos[3] {
            print("siga")
            itiranhyou.text = "姫路市の店舗です"
        } else if compos[row] == compos[4] {
            print("nara")
            itiranhyou.text = "三田市の店舗です"
        } else if compos[row] == compos[5]{
            print("豊岡")
            itiranhyou.text = "豊岡市の店舗です"
        } else {
            print("ks")
            itiranhyou.text = "エラーです。"
        }
    }
    
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //myPickerViewのデリゲートになる
        myPickerView.delegate = self
        //myPickerViewのデータソースになる
        myPickerView.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
