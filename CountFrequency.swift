//
//  ViewController.swift
//  count
//
//  Created by Priyanka K on 02/06/20.
//  Copyright © 2020 Priyanka K. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let values = [1,0,1,2,0,3,1]
      let count =  countTheValues(values: values,count: 2)
        print(count)
    }

    func countTheValues(values:[Int],count:Int?) -> Int {
        var countDictinaory: [Int:Int] = [:]
        for value in values {
            var count = countDictinaory[value] ?? 0
            countDictinaory[value] = count + 1
            
        }
        return countDictinaory[count ?? 0] ?? 0
        
        
    }
}

