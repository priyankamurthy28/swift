//
//  ViewController.swift
//  tuples
//
//  Created by Priyanka K on 04/06/20.
//  Copyright © 2020 Priyanka K. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       let twoLargestNames = findTwoLargestNames(names: ["priyanka","alex","steven"])
        print(twoLargestNames)
       
    }
    func findTwoLargestNames(names:[String]) -> (String,String) {
        let sortedList = names.sorted { (x, y) -> Bool in
            return x.count > y.count
        }
        return (sortedList[0], sortedList[1])
    }
}

