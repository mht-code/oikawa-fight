//
//  WeatherDataModel.swift
//  oikawa-fight
//
//  Created by 及川ひな on 2017/03/08.
//  Copyright © 2017年 oikawa. All rights reserved.
//

import Foundation


// 必要なフレームワークをインポートする
import SwiftyJSON

// SwiftyJSONによるパースを行うクラス
class WeatherDataModel: NSObject {
    
    // 今日の天気（晴れ、雨等）を格納するプロパティ
    var weather: String = ""
    // 気温を格納するプロパティ
    var temp: Int = 0
    
    // weatherDataManagerクラスから初期化される
    init?(data: JSON) {
        // 引数で渡ってきたJSONデータをここでパースする
        // 今日の天気データを取得して変数に格納する
        self.weather = data["list"][0]["weather"][0]["main"].stringValue
        //気温データを取得して変数に格納する
        self.temp = data["list"][0]["main"]["temp"].intValue
    }

}
