//
//  ViewController.swift
//  students
//
//  Created by Priyanka K on 03/06/20.
//  Copyright © 2020 Priyanka K. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let names = ["anna","annie","bhuvana","chaitra","rajesh","pallavi","pavani"]
        let studentNames =  studentsNameByAlpabet(names: names, alphabet: "b")
        print(studentNames)
    }
    
    func studentsNameByAlpabet(names:[String],alphabet:Character) -> [String] {
        var namesDict : [String:Character] = [:]
        var nameArray : [String] = []
        for name in names {
            let character = Array(name)[0]
//            if character == alphabet {
//                nameArray.append(name)
//
//            }
            namesDict[name] = character
            print(namesDict)
        }
        for (key,value) in namesDict {
            if value == alphabet {
                nameArray.append(key)
            }
        }
        return nameArray
        
    }
    
}

