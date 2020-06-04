//
//  ViewController.swift
//  largestNumber
//
//  Created by Priyanka K on 03/06/20.
//  Copyright © 2020 Priyanka K. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let list = [1,2,3,4,5,1,0]
      let smallestNum = SmallestNumber(list: list)
        print("smallestNum:\(smallestNum)")
        let largetNum = largestNumber(list: list)
        print("largetNum:\(largetNum)")
    }

    func SmallestNumber(list:[Int]) -> Int {
        var smallest = list[0]
        for number in list {
            //print(number)
            if number < smallest {
                smallest = number
            }
        }
        return smallest
        
    }
    func largestNumber(list:[Int]) ->  Int{
        
        var largest = -1
        for num in list {
            if num > largest {
                largest = num
            }
        }
        return largest
    }
}

