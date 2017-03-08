//
//  ViewController.swift
//  oikawa-fight
//
//  Created by 及川ひな on 2017/02/10.
//  Copyright © 2017年 oikawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var weatherImage: UIImageView!
    
    
    
    
    @IBOutlet weak var tempLabel: UILabel!
    
    
    
    
    @IBOutlet weak var checkButton: UIButton!
    
    // APIリクエストや、レスポンスデータを利用するためのクラスのインスタンス
    let dataManager = WeatherDataManager()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ここでAPIリクエストを行う
        self.dataManager.dataRequest()
        
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func checkButtonTapped(_ sender: Any) {
        
        // お天気APIの返却値によって画像を変更する条件式
        if dataManager.weatherData?.weather == "Clouds" {
            // 「Clouds」だったら「曇り」の画像を表示する
            weatherImage.image = UIImage(named: "cloud")
        } else if dataManager.weatherData?.weather == "Clear" {
            // 「Clear」だったら「晴れ」の画像を表示する
            weatherImage.image = UIImage(named: "sunny")
        } else if dataManager.weatherData?.weather == "Rain" {
            // 「Rain」だったら「雨」の画像を表示する
            weatherImage.image = UIImage(named: "rain")
        }

        // 気温のラベルに取得した気温を表示させる
        tempLabel.text = dataManager.weatherData?.temp.description
        // ボタンを隠す
        self.checkButton.isHidden = true

        
    }
    
    
    
    
    
    

}

