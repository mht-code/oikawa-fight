//
//  FromYuukiViewController.swift
//  oikawa-fight
//
//  Created by 行木太一 on 2018/02/16.
//  Copyright © 2018年 oikawa. All rights reserved.
//

import UIKit

class FromYuukiViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let persons = [Person(name: "及川", age: 21, hoby: "ダンス"),
                       Person(name: "石垣", age: 24, hoby: "ボルダリング"),
                       Person(name: "行木", age: 29, hoby: "ランニング"),]
        
        var names: [String] = getNames(persons: persons)
        var plusFiveAgePersons: [Person] = getPersons(persons: persons)
    }
    
    struct Person {
        var name: String
        var age: Int
        var hoby: String
    }
    
    // 演習問題1の回答
    func getNames(persons: [Person]) -> [String] {
        
        let names = persons.map { person in
            person.name
        }
        return names
    }
    
    // 演習問題2の回答
    func getPersons(persons: [Person]) -> [Person] {
        
        let plusFiveAgePersons = persons.map { person in
            Person(name: person.name, age: person.age + 5, hoby: person.hoby)
        }
        return plusFiveAgePersons
    }
}
