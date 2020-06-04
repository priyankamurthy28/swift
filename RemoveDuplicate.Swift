//
//  ViewController.swift
//  duplicate
//
//  Created by Priyanka K on 02/06/20.
//  Copyright © 2020 Priyanka K. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        var values: [Int] = [1,0,2,2,1,0]
        noDuplicates(values:values)
    }
    
    func noDuplicates(values:[Int]) -> [Int] {
        var nodupliactesValues: [Int] = []
        var noDuplicates: [Int:Int] = [:]
        for value in values {
            noDuplicates[value] = 1
            //print(noDuplicates)
        }
        for (key,value) in noDuplicates {
            print("Key is \(key) & value is \(value)")
            
            nodupliactesValues.append(key)
        }
        print(nodupliactesValues)
        
        return nodupliactesValues
    }

}

