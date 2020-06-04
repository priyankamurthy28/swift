//
//  ViewController.swift
//  largestName
//
//  Created by Priyanka K on 04/06/20.
//  Copyright © 2020 Priyanka K. All rights reserved.
//

import UIKit

class Stack<T> {
    
     var element : [T] = []
    init(element:[T]) {
    }
    func push(element:T) {
        self.element.append(element)
    }
    func pop() -> T? {
        return element.popLast()
    }
    func peek() -> T? {
        return element.last
    }
    
}

class ViewController: UIViewController {
    let stack = Stack(element: [])

    override func viewDidLoad() {
        super.viewDidLoad()

       var LargeName = largestNames(names: ["aa","bbbb","cccc","dd","e","pppppp"])
        print(LargeName)
       
    }
    func largestNames(names:[String]) -> [String] {
        var count = -1
        var largestString = ""
        var namesArray: [String] = []
        for name in names {
            let character = Array(name)
            var characterCount = character.count
            if characterCount > count {
                largestString = name
                stack.push(element: largestString)
//               let element = stack.pop()
//                push(largest: largestString)
                count = characterCount
            }
            
        }
        
        return [stack.pop() as! String , stack.pop() as! String]
    }
}

